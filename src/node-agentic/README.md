# Node.js Agentic Development (node-agentic)

Node.js/TypeScript development environment with AI coding assistants, modern CLI tools, and Bun.

## What's included

### Platform

| Feature | Description |
|---------|-------------|
| [Docker-in-Docker](https://github.com/devcontainers/features/tree/main/src/docker-in-docker) | Docker CLI and daemon inside the container |
| [AWS CLI](https://github.com/devcontainers/features/tree/main/src/aws-cli) | Amazon Web Services command-line interface |
| [GitHub CLI](https://github.com/devcontainers/features/tree/main/src/github-cli) | GitHub's official CLI (`gh`) |
| [jq-likes](https://github.com/eitsupi/devcontainer-features/tree/main/src/jq-likes) | jq and similar JSON/YAML/TOML processors |
| [Starship](https://github.com/devcontainers-extra/features/tree/main/src/starship) | Cross-shell prompt |

### Languages

| Feature | Description |
|---------|-------------|
| [Node.js](https://github.com/devcontainers/features/tree/main/src/node) | Node.js 22 runtime |

### Development tools ([get2knowio/devcontainer-features](https://github.com/get2knowio/devcontainer-features))

| Feature | Description |
|---------|-------------|
| [AI CLI Tools](https://github.com/get2knowio/devcontainer-features/tree/main/src/ai-clis) | Claude Code, Gemini CLI, OpenAI Codex, GitHub Copilot, OpenCode, CodeRabbit, Beads, Specify CLI |
| [Modern CLI Tools](https://github.com/get2knowio/devcontainer-features/tree/main/src/modern-cli-tools) | bat, ripgrep, fd, fzf, eza, zoxide, neovim, tmux, lazygit, ast-grep, jujutsu, zellij |
| [Node.js Dev Tools](https://github.com/get2knowio/devcontainer-features/tree/main/src/node-dev-tools) | TypeScript toolchain, Vite, esbuild, Prettier, ESLint, Biome, Bun |
| [GitHub Actions Tools](https://github.com/get2knowio/devcontainer-features/tree/main/src/github-actions-tools) | act (local runner), actionlint (workflow linter) |

## Customizing features

Every get2knowio feature supports two string options for tool selection:

| Option | Description |
|--------|-------------|
| `install` | Comma-separated whitelist — only install the listed tools. When empty (default), all tools are installed. |
| `omit` | Comma-separated blacklist — exclude the listed tools. Applied after `install` filtering. |

```jsonc
{
  "features": {
    // Only install the AI CLIs you actually use
    "ghcr.io/get2knowio/devcontainer-features/ai-clis:2": {
      "install": "claudeCode,geminiCli"
    },
    // Install everything except neovim and tmux
    "ghcr.io/get2knowio/devcontainer-features/modern-cli-tools:2": {
      "omit": "neovim,tmux"
    }
  }
}
```

## Feature options reference

### AI CLI Tools

> These tools can be large — use `install` or `omit` to skip any you don't need and speed up container builds.

Tools: `claudeCode`, `geminiCli`, `codex`, `copilot`, `openCode`, `codeRabbit`, `beads`, `specifyCli`

[Full details](https://github.com/get2knowio/devcontainer-features/tree/main/src/ai-clis)

### Modern CLI Tools

Tools: `bat`, `ripgrep`, `fd`, `fzf`, `eza`, `zoxide`, `neovim`, `tmux`, `lazygit`, `astGrep`, `jujutsu`, `zellij`

Additional options: `jujutsuVersion`, `ezaVersion`, `lazygitVersion`, `astGrepVersion`, `zellijVersion`

[Full details](https://github.com/get2knowio/devcontainer-features/tree/main/src/modern-cli-tools)

### Node.js Dev Tools

Tool groups: `typescript`, `bundlers`, `linters`, `watchers`, `bun`

[Full details](https://github.com/get2knowio/devcontainer-features/tree/main/src/node-dev-tools)

### GitHub Actions Tools

Tools: `act`, `actionlint`

Additional options: `actVersion`, `actionlintVersion`

[Full details](https://github.com/get2knowio/devcontainer-features/tree/main/src/github-actions-tools)

## Usage

Apply this template when creating a new Dev Container through the VS Code command palette (**Dev Containers: Add Dev Container Configuration Files...**) or with the [Dev Container CLI](https://github.com/devcontainers/cli):

```sh
devcontainer templates apply -t ghcr.io/get2knowio/devcontainer-templates/node-agentic
```
