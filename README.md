# Jupyter Notebook Deep Learning Stack

Please visit the project documentation site for help to use and contribute to this image and others.
This image is based on the this <a href=https://github.com/jupyter/docker-stacks/tree/main/datascience-notebook>repo</a>

## Usage

Execute these commands in your terminal

```
docker build https://github.com/tatsuki-masuda-code/jupyter_env.git#main -t my_notebook
docker run --rm -it -p 8888:8888 -v C:/mnt/hogehoge:/home/jovyan/work my_notebook
```

If you want additional packages, you can pip/conda in the jupyter lab.

If you want some heavy packages which should've been in the docker image, write it to Issues and let me know.
Thank you.



