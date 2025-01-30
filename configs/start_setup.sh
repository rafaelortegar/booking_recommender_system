#!/bin/bash

set -e  # Exit on any error

echo "----------------------------------------"
echo "🚀 Starting Setup"
echo "----------------------------------------"

bash configs/setup_virtual_environments.sh

bash configs/setup_poetry.sh


echo "----------------------------------------"
echo "✅ Setup Completed Successfully!"
echo "----------------------------------------"