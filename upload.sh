#!/bin/bash

cd /root/.jupyter/workspace/stone/tools
git add --all
git commit -m 'upload'
git push origin master:root

python setup.py sdist
twine upload ./dist/stone91_tools-0.0.1.tar.gz
