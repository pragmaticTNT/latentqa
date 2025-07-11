#!/bin/bash
# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.local/bin:$PATH"
uv --version # Ensure the script is run from the correct directory

# Create the virtual environment and install dependencies
git clone https://github.com/pragmaticTNT/latentqa.git
git config --global user.email "pragmaticTNT@gmail.com"
git config --global user.name "pragma"
git config --global credential.helper store

uv venv
source .venv/bin/activate
uv pip install -r requirements.txt