import os
import shutil
from PIL import Image

source_dir = "source-wallpapers"
destination_dir = "wallpapers"

os.makedirs(destination_dir, exist_ok=True)

min_width = 3840
min_height = 2160

for root, _, files in os.walk(source_dir):
    for file in files:
        if file.lower().endswith(('.jpg', '.jpeg', '.png')):
            file_path = os.path.join(root, file)
            try:
                with Image.open(file_path) as img:
                    width, height = img.size
                    if width >= min_width or height >= min_height:
                        print(f"Copying {file_path} to {destination_dir}")
                        shutil.copy(file_path, destination_dir)
            except Exception as e:
                print(f"Failed to process {file_path}: {e}")

print("Finished processing images.")
