FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

ENV LANG C.UTF-8
ARG INSTALL_ZSH="true"

RUN sudo apt install -y apt-transport-https curl gnupg -y 
RUN curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg 
   RUN  sudo mv bazel-archive-keyring.gpg /usr/share/keyrings 
   RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list

RUN apt-get update 
RUN apt-get install -y gdb llvm bazel-5.4.1
RUN sudo ln -s /usr/bin/bazel-5.4.1 /usr/bin/bazel