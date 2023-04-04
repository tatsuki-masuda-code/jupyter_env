#Forked from github.com/jupyter/docker-stacks
FROM jupyter/datascience-notebook:latest

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install Python 3 packages
RUN mamba install --quiet --yes \
    'lightgbm' \
    'xgboost' \
    'optuna' \
    'plotly' \
    'openpyxl' && \
    #混ぜるな危険だけど、torchだけはpip3
    pip3 install \
    torch \
    torchvision && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

CMD ["jupyterhub-singleuser", "--allow-root"]
WORKDIR "${HOME}"