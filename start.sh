#!/bin/bash

MODEL_DIR="models"
MODEL_FILE="model.h5"
MODEL_PATH="$MODEL_DIR/$MODEL_FILE"

# Create models directory if it doesn't exist
if [ ! -d "$MODEL_DIR" ]; then
    mkdir "$MODEL_DIR"
fi

# Check if model file exists
if [ ! -f "$MODEL_PATH" ]; then
    echo "Downloading model to $MODEL_PATH ..."
    gdown --id 1R26r9eOxnRg7ga4ufxWINPtXyi7AMgfL -O "$MODEL_PATH"
else
    echo "Model already exists at $MODEL_PATH."
fi

# Start Flask app
python main.py
