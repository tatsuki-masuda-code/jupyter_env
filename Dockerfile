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
    'xgboost==1.6.2' \
    'optuna==3.5.0' \
    'catboost==1.2.2' \
    'scikit-plot==0.3.7' \
    'pycaret==3.2.0' \
    'autoviz==0.1.804' \
    'plotly==5.18.0' \
    'openpyxl==3.0.10' \
    'python-graphviz==0.20.1' \
    -c 'conda-forge' && \
    mamba install --quiet --yes \
    'pytorch>=2.0.0' \
    'cpuonly==2.0' \
    -c 'pytorch' && \
    mamba update --all --quiet --yes && \
    mamba clean --all -f -y

RUN fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

WORKDIR "${HOME}"