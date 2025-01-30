#!/bin/bash

set -e  # Exit on any error

echo "----------------------------------------"
echo "🚀 Starting Poetry Setup"
echo "----------------------------------------"

# Check the status of PostgreSQL service
echo "1. Poetry service installation status..."
poetry install

echo "1. Poetry packages installation status..."
poetry add $(cat requirements.txt)
poetry add --group dev $(cat requirements-dev.txt)


# poetry add scikit-learn pandas
# poetry run python script.py
# poetry build
# poetry publish

echo "----------------------------------------"
echo "✅ Poetry Setup Completed Successfully!"
echo "----------------------------------------"

echo "Poetry version is:"
poetry --version
