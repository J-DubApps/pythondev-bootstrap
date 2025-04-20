# Python Dev Environment Bootstrap
My bootstrap setup for Python on my usual platforms (Linux, MacOS, and Windows)

This repo provides a rapid way to set up a cross-platform Python development environment using **VSCode**, **Python 3**, and common developer tools.

## 🔧 Features

- Works on **Windows**, **macOS**, and **Linux**
- Installs:
  - Python 3
  - VSCode with Python extension
  - Useful Python CLI tools: `black`, `ruff`, `rich`
- Includes `.devcontainer` setup for containerized development
- Includes `.vscode/settings.json` for consistent local editor configuration

## 🚀 Usage

### macOS or Linux

```bash
bash bootstrap-python.sh
```

### Windows (PowerShell Admin)

```powershell
winget install -e --id Python.Python.3.12
winget install -e --id Microsoft.VisualStudioCode
code --install-extension ms-python.python
```

Then open the folder in VSCode and start coding.

## 📦 Included Files

- `.devcontainer/devcontainer.json` – Preconfigured dev container
- `.vscode/settings.json` – VSCode Python linting and formatting setup
- `bootstrap-python.sh` – Shell script to quickly configure your environment
