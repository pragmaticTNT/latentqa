#!/bin/bash
# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.local/bin:$PATH"
uv --version # Ensure the script is run from the correct directory

# Create the virtual environment and install dependencies
git clone https://github.com/pragmaticTNT/latentqa.git
uv venv
source .venv/bin/activate
uv pip install -r requirements.txt

# Setup github ssh key