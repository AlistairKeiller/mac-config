import os
import shutil
from PIL import Image

source_dir = "source-wallpapers"
destination_dir = "wallpapers"

os.makedirs(destination_dir, exist_ok=True)

min_width = 3840
min_height = 2160

darkness_threshold = 100 

def is_dark_mode_image(image_path):
    """Check if the image is dark based on average brightness."""
    try:
        with Image.open(image_path) as img:
            grayscale_img = img.convert("L")
            histogram = grayscale_img.histogram()
            pixels = sum(histogram)
            brightness = sum(i * histogram[i] for i in range(256)) / pixels
            return brightness < darkness_threshold
    except Exception as e:
        print(f"Failed to process {image_path}: {e}")
        return False

for root, _, files in os.walk(source_dir):
    for file in files:
        if file.lower().endswith(('.jpg', '.jpeg', '.png')) and "mandelbrot" not in file.lower():
            file_path = os.path.join(root, file)
            try:
                with Image.open(file_path) as img:
                    width, height = img.size
                    if (width >= min_width or height >= min_height) and is_dark_mode_image(file_path):
                        print(f"Copying {file_path} to {destination_dir}")
                        shutil.copy(file_path, destination_dir)
            except Exception as e:
                print(f"Failed to process {file_path}: {e}")

print("Finished processing images.")
