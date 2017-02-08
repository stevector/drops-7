#!/bin/bash

# Exit immediately on errors, and echo commands as they are executed.
set -e

git config --global user.email "$GIT_EMAIL"
git config --global user.name "Circle CI"
