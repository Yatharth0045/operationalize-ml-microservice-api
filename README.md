# Operationalize ML Microservice API

## A Udacity Project for containerizing a ML Microservice written in python and running it over kubernetes

[![CircleCI | Udacity ](https://circleci.com/gh/Yatharth0045/operationalize-ml-microservice-api.svg?style=svg)](https://github.com/Yatharth0045/operationalize-ml-microservice-api#operationalize-ml-microservice-api)

### Steps to be followed

#### 1. Clone this repo

```bash
git clone https://github.com/Yatharth0045/operationalize-ml-microservice-api.git
```

#### 2. Run `Make` rules
1. This will create and activate the virtual envrironment
 ```
 make setup
 ```

2. This will install the dependencies mentioned in the requirements.txt

 ```
 make install
 ```

#### 3. Install other libraries

##### Note: These commands are for ubuntu amd64
1. Install docker

 ```
 sudo apt-get update && sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
 sudo add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
 sudo docker --version
 ```
 
 For any other Linux distribution or OS, refer to [docker docs](https://docs.docker.com/engine/install/)

2. Install Hadolint
 
 ```
 sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 && sudo chmod +x /bin/hadolint
 hadolint --version
 ```
 
 For any other distribution or OS, refer to [hadolint README](https://github.com/hadolint/hadolint#install)

3. Install Minikube (Kubernetes)
 
 Refer to official [Kubernetes documentation](https://kubernetes.io/docs/tasks/tools/install-minikube/) for install minikube and kubectl.
 After install, verify the version using `minikube version`

#### 4. Verify Dockerfile lint

 ```
 hadolint Dockerfile
 ```

#### Running the application

##### 1. Run application over docker 

 ```
 ./run_docker.sh
 ./make_prediction.sh
 ```

##### 2. Run application over minikube 

 ```
 minikube start
 ./run_kubernetes.sh
 ./make_prediction.sh
 ```