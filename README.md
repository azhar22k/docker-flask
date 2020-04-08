# docker-flask
Dockerised flask app configured to run on k8s as well

# Workflow

```
First clone this repo locally
```

The app can be run in 3 ways

* [Python virtualenv](#virtualenv)
* [Docker](#docker)
* [Kubernetes(k8s)](#kubernetes)

## Virtualenv

1. Create and setup virtual environment
```shell
python3 -m venv venv;
source venv/bin/activate;
python3 -r requirements.text;
```

2. Start App

```shell
python3 app.py;
```

3. Stop and deactivate virtualenv

```bash
Ctrl+c
deactivate;
```

## Docker

1. Setup `.env` file (To see the values required check [.env.sample](.env.sample))
2. Start Service

```shell
docker-compose --compatibility up;
```

3. Stop Service

```shell
Ctrl+c
```

## Kubernetes

1. Install kompose

```shell
brew install kompose;
```

2. Convert `docker-compose.yml` to `kubectl` compatible files

```shell
kompose convert;
```

3. Create a namespace for your resource

```shell
kubectl create namespace demo;
```

4. Deploy your code to kubernetes

```shell
kubectl apply \
    -f env-configmap.yaml \
    -f docker-flask-deployment.yaml \
    -f docker-flask-service.yaml \
    -n demo;
```

5. Get Inro About the App

```shell
kubectl get deployment,service,pods -n demo;
```

6. Remove Everything

```shell
kubectl delete namespace demo;
```