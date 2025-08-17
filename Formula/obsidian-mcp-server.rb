class ObsidianMcpServer < Formula
  desc "Model Context Protocol server for Obsidian vault interaction"
  homepage "https://github.com/otaviocc/ObsidianMCPServer"
  url "https://github.com/otaviocc/ObsidianMCPServer/releases/download/0.3.0/ObsidianMCPServer-0.3.0-macos-signed.zip"
  sha256 "0bdc655abe001eadad0e12796b103e856cd110c98177deb07e8a270c120e3a5e"
  license "MIT"

  def install
    bin.install "ObsidianMCPServer" => "obsidian-mcp-server"
  end

  test do
    assert_match "MCP Server ObsidianMCPServer", shell_output("#{bin}/obsidian-mcp-server --help 2>&1", 1)
  end
end
