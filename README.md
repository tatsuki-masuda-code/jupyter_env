# Jupyter Notebook Deep Learning Stack

[![docker pulls](https://img.shields.io/docker/pulls/jupyter/tensorflow-notebook.svg)](https://hub.docker.com/r/jupyter/tensorflow-notebook/)
[![docker stars](https://img.shields.io/docker/stars/jupyter/tensorflow-notebook.svg)](https://hub.docker.com/r/jupyter/tensorflow-notebook/)
[![image size](https://img.shields.io/docker/image-size/jupyter/tensorflow-notebook/latest)](https://hub.docker.com/r/jupyter/tensorflow-notebook/ "jupyter/tensorflow-notebook image size")

GitHub Actions in the <https://github.com/jupyter/docker-stacks> project builds and pushes this image to Docker Hub.

Please visit the project documentation site for help to use and contribute to this image and others.

- [Jupyter Docker Stacks on ReadTheDocs](https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html)
- [Selecting an Image :: Core Stacks :: jupyter/tensorflow-notebook](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-tensorflow-notebook)
- [Image Specifics :: Tensorflow](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/specifics.html#tensorflow)

## Usage

Execute these commands in your terminal

```
docker build https://github.com/tatsuki-masuda-code/jupyter_env.git#main -t my_notebook
docker run --rm -it -p 8888:8888 -v C:/mnt/hogehoge:/home/jovyan/work my_notebook
```

If you want additional packages, you can pip/conda in the jupyter lab.

If you want some heavy packages which should've been in the docker image, write it to Issues and let me know.
Thank you.



