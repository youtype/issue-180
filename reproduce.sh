#!/usr/bin/env bash
set -e

rm -rf .venv

# select py37
# pyenv shell 3.7.16

# create new virtual environment in ./.venv
virtualenv .venv

source .venv/bin/activate

# install requirements
pip install -r requirements.txt

pyright --version
pyright test.py
