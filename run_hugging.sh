!#/bin/bash

echo ">>> Loading environment variables..."
uv pip install huggingface_hub
export HF_TOKEN=$(strings /proc/1/environ | grep "HF_TOKEN=" | cut -d'=' -f2)
huggingface-cli login --token $HF_TOKEN
export PATH_TO_DECODER="aypan17/latentqa_llama-3-8b-instruct" # Needed if you want to use the paper's pretrained decoder
echo ">>> Environment variables loaded successfully!"