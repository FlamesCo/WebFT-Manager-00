#!/bin/bash

# FT-CONDA MANAGER 0.X.X.X for macOS 13
# Copyright (c) FlamesLLC 20XX. All rights reserved.

ENV_NAME="py36"
MINIFORGE_M1_URL="https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh"
MINIFORGE_INTEL_URL="https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-x86_64.sh"

list_python_versions() {
    echo "Installed Python Versions:"
    echo "Python 2: $(python2 --version 2>&1 || echo 'Not Installed')"
    echo "Python 3: $(python3 --version 2>&1 || echo 'Not Installed')"
}

[[ "$1" == "--list" ]] && list_python_versions && exit 0

while true; do
    echo "FT-CONDA MANAGER 0.X.X.X for macOS 13"
    echo "1. Update Miniforge | 2. Uninstall Miniforge | 3. Remove Conda Environment | 4. Exit"
    read -p "Select an option [1-4]: " option
    case "$option" in
        1) conda update -n base -c defaults conda -y && echo "Miniforge updated." ;;
        2) conda install anaconda-clean -y && anaconda-clean --yes && rm -rf ~/miniforge3 && echo "Miniforge uninstalled." ;;
        3) conda env remove -n "${ENV_NAME}" && echo "Conda environment '${ENV_NAME}' removed." ;;
        4) echo "Exiting FT-CONDA MANAGER." && exit 0 ;;
        *) echo "Invalid option. Select [1-4]." ;;
    esac
done
#!/bin/bash

# FT-CONDA MANAGER 0.X.X.X for macOS 13
# Copyright (c) FlamesLLC 20XX. All rights reserved.

ENV_NAME="py36"
MINIFORGE_M1_URL="https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh"
MINIFORGE_INTEL_URL="https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-x86_64.sh"

list_python_versions() {
    echo "Installed Python Versions:"
    echo "Python 2: $(python2 --version 2>&1 || echo 'Not Installed')"
    echo "Python 3: $(python3 --version 2>&1 || echo 'Not Installed')"
}

[[ "$1" == "--list" ]] && list_python_versions && exit 0

while true; do
    echo "FT-CONDA MANAGER 0.X.X.X for macOS 13"
    echo "1. Update Miniforge | 2. Uninstall Miniforge | 3. Remove Conda Environment | 4. Exit"
    read -p "Select an option [1-4]: " option
    case "$option" in
        1) conda update -n base -c defaults conda -y && echo "Miniforge updated." ;;
        2) conda install anaconda-clean -y && anaconda-clean --yes && rm -rf ~/miniforge3 && echo "Miniforge uninstalled." ;;
        3) conda env remove -n "${ENV_NAME}" && echo "Conda environment '${ENV_NAME}' removed." ;;
        4) echo "Exiting FT-CONDA MANAGER." && exit 0 ;;
        *) echo "Invalid option. Select [1-4]." ;;
    esac
done
