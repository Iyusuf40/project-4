[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Iyusuf40/project-4/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Iyusuf40/project-4/tree/main)

## Project Overview

This project is on operationalizing a Machine Learning Microservice API using flask -  a lightweight python framework. 

A pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, 
such as average rooms in a home and data about highway access, teacher-to-pupil ratios, etc was used. More about the data, 
which was initially taken from Kaggle here: [the data source site](https://www.kaggle.com/c/boston-housing).


## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Files:
1. app.py: the main flask application.
2. Dockerfile: specifies what docker image to use and sets up the docker image tp run the application
3. Makefile: allows easy, logical and coordinated actions to set up environment up to required
4. requirements.txt: contains the module dependencies required by the app to function properly
5. run_docker.sh: builds the docker image specified in Dockerfile and starts it
6. run_kubernetes.sh: deploys the created docker image in a local cluster - minikube, and forwards local port 8000 to the running pod's port 80.
7. upload_docker.sh: pushes the built image to dockerhub. 

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
