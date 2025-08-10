class ObsidianMcpServer < Formula
  desc "Model Context Protocol server for Obsidian vault interaction"
  homepage "https://github.com/otaviocc/ObsidianMCPServer"
  url "https://github.com/otaviocc/ObsidianMCPServer/releases/download/0.2.0/ObsidianMCPServer-0.2.0-macos-signed.zip"
  sha256 "d1d59f7fe62bfcba9fb53f38132330d93ced2633444be5577292382941a47414"
  license "MIT"

  def install
    bin.install "ObsidianMCPServer" => "obsidian-mcp-server"
  end

  test do
    assert_match "MCP Server ObsidianMCPServer", shell_output("#{bin}/obsidian-mcp-server --help 2>&1", 1)
  end
end
