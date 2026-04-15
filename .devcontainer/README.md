# Utopia Development Container

This folder includes a **VS Code Dev Container** for a Docker‑in‑Docker workflow and GHCR authentication.

## Quick start

1. **Ensure SSH agent is ready** (for SSH‑cloned repos and private submodules, see [here](https://code.visualstudio.com/remote/advancedcontainers/sharing-git-credentials#_using-ssh-keys) for more context):

   ```sh
   eval "$(ssh-agent -s)"  # if not already running
   ssh-add
   ```

1. **Set your Git identity (first time only):**

   ```sh
   git config --global user.name  "Your Name"
   git config --global user.email "you@example.com"
   ```

1. **Open the folder in VS Code** and choose **“Dev Containers: Reopen in Container”** from the command pallette.

## Dotfiles support (customizing your terminal)

VS Code Dev Containers can automatically [**clone and apply a dotfiles repository**](https://code.visualstudio.com/docs/devcontainers/containers#_personalizing-with-dotfile-repositories) when the container starts. This lets you bring your preferred shell prompt, aliases, editors, and tooling into the container.

- In VS Code, open **Settings** and search for **“Dev Containers Dotfiles”**. Provide your repo URL (e.g., `github.com/you/dotfiles`) and optionally an install script/target path.
- Alternatively, configure dotfiles at a workspace or user level so all containers pick them up.

> Dotfiles run early in container startup; they’re a good place to set shell preferences. Avoid storing **secrets** in dotfiles—use environment variables or secret stores instead.

## Common issues

- Review Docker Desktop's [resource allocation settings](https://docs.docker.com/desktop/settings-and-maintenance/settings/#resources). Devcontainers can be resource intensive depending on the workflows being run inside them. Be sure to keep on eye on this if any unexpected errors pop up.

- Ensure that the necessary environment variables have been properly set in the `devcontainer.env` file before starting the devcontainer. This is a common cause of issues with the provided workflows.

______________________________________________________________________

If you run into anything unexpected, capture the **Dev Containers** logs (Command Palette → *Dev Containers: Show Container Log*) along with the output of your `env` command.
