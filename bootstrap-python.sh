#!/bin/bash
# Cross-platform Python Dev Environment Bootstrap Script

echo "Bootstrapping Python + VSCode + Extensions..."

# macOS or Linux path
if [[ "$OSTYPE" == "darwin"* || "$OSTYPE" == "linux-gnu" ]]; then
    echo "Detected UNIX-like system."

    # Install Python
    if ! command -v python3 &> /dev/null; then
        echo "Installing Python..."
        brew install python || sudo apt install -y python3 python3-pip python3-venv
    fi

    # Install VSCode
    if ! command -v code &> /dev/null; then
        echo "VSCode not found. Please install VSCode manually from https://code.visualstudio.com/"
    fi

    # Install Python Extension
    code --install-extension ms-python.python
fi

# Windows Winget suggestion
if [[ "$OS" == "Windows_NT" ]]; then
    echo "Run this in PowerShell:"
    echo 'winget install -e --id Python.Python.3.12'
    echo 'winget install -e --id Microsoft.VisualStudioCode'
    echo 'code --install-extension ms-python.python'
fi
