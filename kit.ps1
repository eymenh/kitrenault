# Installation de WSL2
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
wsl --set-default-version 2

# Installation de Python 3 dans WSL2
Invoke-WebRequest -Uri https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.tar.xz -OutFile python.tar.xz
wsl tar -xf python.tar.xz -C /tmp/
wsl /tmp/python-3.10.0/amd64/python3.10 -m ensurepip
wsl /tmp/python-3.10.0/amd64/python3.10 -m pip install --upgrade pip setuptools wheel

# Installation d'Ansible dans WSL2
wsl /tmp/python-3.10.0/amd64/python3.10 -m pip install ansible

wsl ansible-playbook xxx.yml
