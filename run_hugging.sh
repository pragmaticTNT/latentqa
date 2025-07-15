#!/bin/bash

echo ">>> Loading environment variables..."
uv pip install huggingface_hub
uv pip install datasets
export HF_TOKEN=$(strings /proc/1/environ | grep "HF_TOKEN=" | cut -d'=' -f2)
echo 'export $HF_TOKEN' >> ~/.bashrc

huggingface-cli login --token $HF_TOKEN

echo 'export PATH_TO_DECODER="aypan17/latentqa_llama-3-8b-instruct"' >> ~/.bashrc
. ~/.bashrc
# Needed if you want to use the paper's pretrained decoder
echo ">>> Environment variables loaded successfully!"
echo ""

## This is the command that you *would* use to download the dataset manually, but you don't need to do this in practice (just install datasets with pip)

# echo ">>> Loading control data..."
# huggingface-cli download databricks/databricks-dolly-15k --repo-type dataset --local-dir dataset # Downloading data used for control
# echo ">>> Control data loaded successfully!"