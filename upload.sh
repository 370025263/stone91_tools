#!/bin/bash

cd /root/.jupyter/workspace/stone/tools
git add --all
git commit -m 'upload'
git push origin master:root

python setup.py sdist
twine upload --skip-existing ./dist/*
