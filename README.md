# get2know.io Dev Container Templates

Dev Container Templates for agentic development, published as OCI artifacts to `ghcr.io/get2knowio/devcontainer-templates`.

Each template provides a ready-to-use development environment with AI coding assistants, modern CLI tools, and language-specific tooling from the [get2knowio/devcontainer-features](https://github.com/get2knowio/devcontainer-features) collection.

## Templates

| Template | Description | Languages |
|----------|-------------|-----------|
| [`full-stack`](src/full-stack/) | Complete environment with all languages and tools | Python, Node.js, Rust |
| [`rust-agentic`](src/rust-agentic/) | Rust-focused agentic development | Rust, Node.js (for AI CLIs) |
| [`node-agentic`](src/node-agentic/) | Node.js/TypeScript-focused agentic development | Node.js |
| [`python-agentic`](src/python-agentic/) | Python-focused agentic development | Python, Node.js (for AI CLIs) |

## What's Included

All templates share a common base:

- **Base image**: `mcr.microsoft.com/devcontainers/base:ubuntu`
- **Docker-in-Docker**: Build and run containers inside your devcontainer
- **Node.js 22**: Required for AI CLI tools
- **AWS CLI**: Cloud development support
- **GitHub CLI**: PR/issue workflows from the terminal
- **jq/yq**: JSON and YAML processing
- **Starship**: Cross-shell prompt
- **AI CLIs**: Claude Code, Gemini, Codex, Copilot, OpenCode, CodeRabbit
- **Modern CLI tools**: bat, ripgrep, fd, fzf, eza, zoxide, neovim, tmux, lazygit, ast-grep
- **GitHub Actions tools**: act (local runner), actionlint (workflow linter)

Each template then adds its language-specific stack:

| | full-stack | rust-agentic | node-agentic | python-agentic |
|---|:---:|:---:|:---:|:---:|
| Python + Poetry + uv | x | | | x |
| Node.js dev tools (TS, bundlers, linters, Bun) | x | | x | |
| Rust + bacon, cargo-edit, cargo-audit | x | x | | |

## Usage

### From the DevContainer CLI

```bash
devcontainer templates apply -t ghcr.io/get2knowio/devcontainer-templates/rust-agentic
```

### Manual

Copy the `.devcontainer/devcontainer.json` from any template's `src/<template>/.devcontainer/` directory into your project.

## License

See [LICENSE](LICENSE).
