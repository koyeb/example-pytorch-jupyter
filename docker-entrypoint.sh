#!/usr/bin/env bash

CUDA_HOME=/usr/local/cuda
PATH=${CUDA_HOME}/bin:$PATH
LD_LIBRARY_PATH=${CUDA_HOME}/lib64:$LD_LIBRARY_PATH

jupyter lab --allow-root --no-browser --port=$PORT --ip=* --FileContentsManager.delete_to_trash=False --ServerApp.terminado_settings='{"shell_command":["/bin/bash"]}' --ServerApp.token=$JUPYTER_PASSWORD --ServerApp.allow_origin=* --ServerApp.preferred_dir=/workspace
