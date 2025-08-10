# MCP Homebrew Tap

Homebrew tap for Model Context Protocol (MCP) tools maintained by me.

- **Repository tap**: `otaviocc/mcp`
- **Supported platform**: macOS (binary formulae)

### Available formulae

- **obsidian-mcp-server**: Model Context Protocol server for Obsidian vault interaction. Homepage: [`github.com/otaviocc/ObsidianMCPServer`](https://github.com/otaviocc/ObsidianMCPServer)

## Install

- **One‑liner**:

```bash
brew install otaviocc/mcp/obsidian-mcp-server
```

- **Tap first, then install**:

```bash
brew tap otaviocc/mcp
brew install obsidian-mcp-server
```

- **Brewfile** (`brew bundle`):

```ruby
tap "otaviocc/mcp"
brew "obsidian-mcp-server"
```

## Usage

After installation the binary is available as `obsidian-mcp-server`:

```bash
obsidian-mcp-server --help
```

Refer to the project homepage for integration instructions with your MCP client.

## Upgrade

```bash
brew update
brew upgrade obsidian-mcp-server
```

## Uninstall

```bash
brew uninstall obsidian-mcp-server
```

To remove the tap entirely:

```bash
brew untap otaviocc/mcp
```

## Troubleshooting

- Check formula info: `brew info obsidian-mcp-server`
- Doctor your Homebrew setup: `brew doctor`
- Show help for Homebrew: `brew help` or `man brew`

## Contributing

Issues and pull requests are welcome. If you are bumping a formula, please update the URL to the new release and its `sha256`.

## Homebrew documentation

See the official docs at [Homebrew Documentation](https://docs.brew.sh).
