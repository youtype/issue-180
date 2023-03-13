#!/usr/bin/env bash
set -e

# remove venv if it exists
rm -rf .venv

# Set your Python version here if it is not the latest
# pyenv shell 3.7.16

# create new virtual environment in ./.venv
virtualenv .venv

source .venv/bin/activate

# install requirements
pip install -r requirements.txt

# reproduce the issue
pyright test.py
