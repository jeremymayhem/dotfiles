#!/bin/env bash

source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k

# Don't want colors?  Add this to .bashrc.config:
# export KUBECOLOR_ARGS=--plain
#
# Have a white background?  Yuck.  Add this to .bashrc.config:
# export KUBECOLOR_ARGS=--light-background
command -v kubecolor >/dev/null 2>&1 && alias kubectl="kubecolor ${KUBECOLOR_ARGS}"
command -v kubecolor >/dev/null 2>&1 && complete -F __start_kubectl kubecolor

source <(minikube completion bash)
alias mk=minikube
complete -F __start_minikube mk

source <(helm completion bash)
alias h=helm
complete -F __start_helm h
