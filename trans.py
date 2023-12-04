#!/usr/bin/env python3
from transformers import pipeline
import argparse
import os
import time
import subprocess

def asr_cli(model, device, batch_size, chunk_length, audio_file):
    pipe = pipeline("automatic-speech-recognition",
                    model=model,
                    device=device)
    if device != 'mps':
        pipe.model = pipe.model.to_bettertransformer()

    subprocess.run(['ffmpeg', '-i', audio_file, 'temp.wav'])

    start_time = time.perf_counter()
    outputs = pipe('temp.wav', chunk_length_s=chunk_length, batch_size=batch_size)
    end_time = time.perf_counter()
    elapsed_time = end_time - start_time

    os.remove('temp.wav')
    print(outputs['text'])
    print(f"ASR took {elapsed_time:.2f} seconds.")

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='ASR CLI')
    parser.add_argument('--model', default='openai/whisper-large-v3', type=str)
    parser.add_argument('--device', default='mps', type=str)
    parser.add_argument('--batch-size', default=4, type=int)
    parser.add_argument('--chunk-length', default=30, type=int)
    parser.add_argument('audio_file', type=str)

    args = parser.parse_args()
    asr_cli(args.model, args.device, args.batch_size, args.chunk_length, args.audio_file)
