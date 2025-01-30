#!/bin/bash

set -e  # Exit on any error

echo "----------------------------------------"
echo "🚀 Starting virtual environments Setup with PyEnv"
echo "----------------------------------------"

echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
source ~/.bashrc

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Check the status of PostgreSQL service
echo "1. Creating environments..."
pyenv virtualenv 3.11.6 dev-env
pyenv virtualenv 3.11.6 prod-env

echo "2. Activating dev environment on jupyter notebook..."
pyenv activate dev-env
pip install ipykernel
python -m ipykernel install --user --name=dev-env --display-name "Python (Dev)"
pip install -r requirements-dev.txt

echo "3. Activating prod environment on jupyter notebook..."
pyenv activate prod-env
pip install ipykernel
python -m ipykernel install --user --name=prod-env --display-name "Python (Prod)"
pip install -r requirements.txt

echo "----------------------------------------"
echo "✅ environments Setup Completed Successfully!"
echo "----------------------------------------"

echo "Available versions are:"
pyenv versions