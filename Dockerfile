#Forked from github.com/jupyter/docker-stacks
FROM jupyter/datascience-notebook:latest

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    graphviz && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER ${NB_UID}
# Install Python 3 packages/

RUN mamba install --quiet --yes \
    'lightgbm' \
    'xgboost' \
    'optuna' \
    'plotly' \
    'openpyxl' \
    'gym' \
    'python-graphviz' \
    -c 'conda-forge' && \
    mamba clean --all -f -y

RUN pip3 install --upgrade --quiet --no-cache-dir pip && \
    pip3 install --quiet --no-cache-dir \
    --index-url https://download.pytorch.org/whl/cpu \
    'torch'

RUN pip3 install --quiet --no-cache-dir \
    'japanize-matplotlib' \
    'ccxt'

RUN fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

WORKDIR "${HOME}"