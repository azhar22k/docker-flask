# docker-flask
Dockerised flask app configured to run on k8s as well

# Workflow
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
docker-compose up;
```

3. Stop Service

```shell
Ctrl+c
```
