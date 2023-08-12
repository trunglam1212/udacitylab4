<include a CircleCI status badge, here>


# Pass circleCI
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/trunglam1212/udacitylab4/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/trunglam1212/udacitylab4/tree/master)


## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

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

### Kubernetes Steps

1. Setup and Configure Docker locally
    * install docker as described in the [link](https://docs.docker.com/engine/install/ubuntu/).
    * Run `./run_docker.sh`
    * Run `docker ps` to check if docker is running.
    * Run `./make_prediction.sh`
2. Setup and Configure Kubernetes locally
    * Run `curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64`
    * Run `sudo install minikube-linux-amd64 /usr/local/bin/minikube`
    * Run `minikube start` to start minikube
    * Run `kubectl get pods` to see which pods are running.
    * Run `./run_kubernetes.sh`
    * Run `./make_prediction.sh`
3. Create Flask app in Container
    * Run `./run_docker.sh` to build and start the Flask app container. 
    * Run `./upload_docker.sh` to upload the container to docker hub.   

### Explain file in project
1. .circleci: CircleCi config pipeline
2. model_data: resource of python project
3. output_txt_files: 
	docker_out.txt: output text when "./run_docker.sh" and Run "./make_prediction.sh"
        kubernetes_out.txt: output text when "./run_kubernetes.sh" and Run "./make_prediction.sh"
4. app.py: file source python of project
5. requirements.txt: file have library as need to run project
6. run_docker.sh: file bash to run docker
7. run_kubernetes.sh: file bash to run kubernetes
8. upload_docker.sh: file bash to push docker to docker hub

   