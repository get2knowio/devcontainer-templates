# Rust Agentic Development (rust-agentic)

Rust development environment with AI coding assistants, modern CLI tools, and cargo extras.

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
| [Rust](https://github.com/devcontainers/features/tree/main/src/rust) | Rust toolchain via rustup |
| [Node.js](https://github.com/devcontainers/features/tree/main/src/node) | Node.js 22 runtime |

### Development tools ([get2knowio/devcontainer-features](https://github.com/get2knowio/devcontainer-features))

| Feature | Description |
|---------|-------------|
| [AI CLI Tools](https://github.com/get2knowio/devcontainer-features/tree/main/src/ai-clis) | Claude Code, Gemini CLI, OpenAI Codex, GitHub Copilot, OpenCode, CodeRabbit, Beads, Specify CLI |
| [Modern CLI Tools](https://github.com/get2knowio/devcontainer-features/tree/main/src/modern-cli-tools) | bat, ripgrep, fd, fzf, eza, zoxide, neovim, tmux, lazygit, ast-grep, jujutsu |
| [Rust Dev Tools](https://github.com/get2knowio/devcontainer-features/tree/main/src/rust-dev-tools) | bacon, cargo-edit, cargo-audit |
| [GitHub Actions Tools](https://github.com/get2knowio/devcontainer-features/tree/main/src/github-actions-tools) | act (local runner), actionlint (workflow linter) |

## Customizing features

Every feature can be customized by passing options in your `devcontainer.json`. Override individual tools by adding an `options` object to the feature reference:

```jsonc
{
  "features": {
    // Only install the AI CLIs you actually use
    "ghcr.io/get2knowio/devcontainer-features/ai-clis:1": {
      "installMode": "selected",
      "claudeCode": true,
      "geminiCli": true
    }
  }
}
```

## Feature options reference

### AI CLI Tools

> These tools can be large — disable any you don't need to speed up container builds.

| Option | Description | Type | Default |
|--------|-------------|------|---------|
| `installMode` | `"all"` installs every CLI unless explicitly disabled; `"selected"` installs only CLIs explicitly set to true | string | `all` |
| `claudeCode` | Install Claude Code CLI | boolean | `true` |
| `geminiCli` | Install Google Gemini CLI | boolean | `true` |
| `codex` | Install OpenAI Codex CLI | boolean | `true` |
| `copilot` | Install GitHub Copilot CLI | boolean | `true` |
| `openCode` | Install OpenCode AI CLI | boolean | `true` |
| `codeRabbit` | Install CodeRabbit CLI | boolean | `true` |
| `beads` | Install Beads (coding agent memory system) | boolean | `true` |
| `specifyCli` | Install Specify CLI (spec-driven development toolkit) | boolean | `true` |

[Full details](https://github.com/get2knowio/devcontainer-features/tree/main/src/ai-clis)

### Modern CLI Tools

| Option | Description | Type | Default |
|--------|-------------|------|---------|
| `bat` | Install bat (cat replacement with syntax highlighting) | boolean | `true` |
| `ripgrep` | Install ripgrep (fast grep replacement) | boolean | `true` |
| `fd` | Install fd (fast find replacement) | boolean | `true` |
| `fzf` | Install fzf (fuzzy finder) | boolean | `true` |
| `eza` | Install eza (modern ls replacement) | boolean | `true` |
| `zoxide` | Install zoxide (smart cd replacement) | boolean | `true` |
| `neovim` | Install neovim | boolean | `true` |
| `tmux` | Install tmux (terminal multiplexer) | boolean | `true` |
| `lazygit` | Install lazygit (Git TUI) | boolean | `true` |
| `astGrep` | Install ast-grep (structural search tool) | boolean | `true` |
| `jujutsu` | Install jujutsu (jj, next-gen Git-compatible VCS) | boolean | `true` |
| `zellij` | Install zellij (terminal workspace) | boolean | `false` |
| `jujutsuVersion` | Version of jujutsu to install | string | `0.38.0` |
| `ezaVersion` | Version of eza to install | string | `latest` |
| `lazygitVersion` | Version of lazygit to install | string | `0.59.0` |
| `astGrepVersion` | Version of ast-grep to install | string | `0.40.5` |
| `zellijVersion` | Version of zellij to install | string | `0.43.1` |

[Full details](https://github.com/get2knowio/devcontainer-features/tree/main/src/modern-cli-tools)

### Rust Dev Tools

| Option | Description | Type | Default |
|--------|-------------|------|---------|
| `bacon` | Install bacon (cargo build watcher, replaces cargo-watch) | boolean | `true` |
| `cargoEdit` | Install cargo-edit (cargo add/rm/upgrade) | boolean | `true` |
| `cargoAudit` | Install cargo-audit (security vulnerability checker) | boolean | `true` |

[Full details](https://github.com/get2knowio/devcontainer-features/tree/main/src/rust-dev-tools)

### GitHub Actions Tools

| Option | Description | Type | Default |
|--------|-------------|------|---------|
| `act` | Install act (run GitHub Actions locally) | boolean | `true` |
| `actionlint` | Install actionlint (GitHub Actions workflow linter) | boolean | `true` |
| `actVersion` | Version of act to install | string | `0.2.84` |
| `actionlintVersion` | Version of actionlint to install | string | `1.7.10` |

[Full details](https://github.com/get2knowio/devcontainer-features/tree/main/src/github-actions-tools)

## Usage

Apply this template when creating a new Dev Container through the VS Code command palette (**Dev Containers: Add Dev Container Configuration Files...**) or with the [Dev Container CLI](https://github.com/devcontainers/cli):

```sh
devcontainer templates apply -t ghcr.io/get2knowio/devcontainer-templates/rust-agentic
```
