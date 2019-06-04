#!/bin/bash
echo "This script will install Jupyter Notebooks and Python3 Kernel"
sudo apt-get install -y python3-dev
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install jsonschema
sudo python3 -m pip install jupyter
sudo apt-get install -y python-seaborn python-pandas ttf-bitstream-vera python-matplotlib
sudo ipython3 kernel install
echo "Done Installing Jupyter"
