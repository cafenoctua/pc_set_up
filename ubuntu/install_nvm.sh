#!/bin/bash

sudo apt update

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

ls -l ~/.nvm | grep ins

source ~/.zshrc

nvm install v20.11.0