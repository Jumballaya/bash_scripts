#!/bin/bash

# Installs and adds a pip package to requirements.txt

pip install $1 && pip freeze > requirements.txt
