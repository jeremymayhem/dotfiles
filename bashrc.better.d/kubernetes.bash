#!/bin/env bash

if better::command_exists kubectl; then
  source <(kubectl completion bash)
  alias k=kubectl
  complete -F __start_kubectl k

  # Don't want colors?  Add this to .bashrc.config:
  # export KUBECOLOR_ARGS=--plain
  #
  # Have a white background?  Yuck.  Add this to .bashrc.config:
  # export KUBECOLOR_ARGS=--light-background
  if better::command_exists kubecolor; then
    alias kubectl="kubecolor ${KUBECOLOR_ARGS}"
    complete -F __start_kubectl kubecolor
  fi
fi

if better::command_exists minikube; then
  source <(minikube completion bash)
  alias mk=minikube
  complete -F __start_minikube mk
fi

if better::command_exists helm; then
  source <(helm completion bash)
  alias h=helm
  complete -F __start_helm h
fi
