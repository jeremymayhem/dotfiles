#!/bin/env bash

source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k

source <(minikube completion bash)
alias mk=minikube
complete -F __start_minikube mk
