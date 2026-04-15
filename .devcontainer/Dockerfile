FROM mcr.microsoft.com/devcontainers/python:3.13-trixie

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY ./* /usr/share/devcontainer/

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN echo "source /usr/share/devcontainer/setup.sh" | tee -a /etc/zsh/zshrc /etc/bash.bashrc
