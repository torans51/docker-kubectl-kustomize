# Docker-kubectl

Minimal docker image containing bash, kubectl, kustomize & gettext. nothing more, nothing less.

# How to run
To run in interactive mode with bash shell
```
docker run -it torans51/kubectl-kustomize:latest
```

To run kubectl, kustomize or another command type
```
docker run -it torans51/kubectl-kustomize:latest [command]
```