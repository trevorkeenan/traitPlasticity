# Using the BAAD docker images

Docker is a program that allows users to makes virtual machines (called containers) that contain all the software needed to run a program or analysis. As such it is a tool that can be used to guarantee some software will always run the same way, regardless of the environment it is running in. Instructions on how to install this can be found [here](https://docs.docker.com).

Assuming you have docker installed and configured correctly, you can load images containing the source code and required R packages to run the analyses. Currently one image:

- `trevorkeenan/traitPlasticity` includes the source code but without having built the outputs

To get the repos onto your local machine you download them from dockerhub, e.g. in terminal type

    docker pull trevorkeenan/traitPlasticity_clean
