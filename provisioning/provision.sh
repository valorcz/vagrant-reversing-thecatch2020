#!/bin/bash

# Install all the necessary packages
sudo apt update
sudo apt install -y git python-pip python3-pip
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt install -y python3.5-dev

# Create the toolset dir
mkdir ~/tools/
mkdir ~/bin/

# Build the toolset
cd ~/tools

repos=("countercept/python-exe-unpacker" \
       "extremecoders-re/pyinstxtractor" \
       "rocky/python-uncompyle6/")

for repo in ${repos[@]}; do
  echo "Cloning ${repo} "
  git clone -q https://github.com/${repo}
done

# Uncompyle6
cd ~/tools/python-uncompyle6
pip install -e .
python2.7 setup.py build
python2.7 setup.py install --user

# pyinstxtractor
cd ~/tools/pyinstxtractor/
patch -p0 < /vagrant/provisioning/pyinstxtractor.py.patch

# Announce the URL where Splunk is available now
echo "****************************************************************************"
echo " All done, congratulations!"
echo "****************************************************************************"

# This doesn't work probably, .bashrc will be required
export PATH=$PATH:~/bin/:~/.local/bin/
