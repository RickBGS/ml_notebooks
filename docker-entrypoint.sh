#!/bin/bash
set -e

mkdir -p titanic/submissions/

/opt/conda/bin/jupyter notebook --notebook-dir=$NOTEBOOKS_HOME --ip='*' --port=8888 --no-browser --allow-root
