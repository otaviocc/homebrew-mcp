class ObsidianMcpServer < Formula
  desc "Model Context Protocol server for Obsidian vault interaction"
  homepage "https://github.com/otaviocc/ObsidianMCPServer"
  url "https://github.com/otaviocc/ObsidianMCPServer/releases/download/0.4.0/ObsidianMCPServer-0.4.0-macos-signed.zip"
  sha256 "29f216fcad01d99342862b2285a38e68c604bbafaf6b4275900c62de102d3be1"
  license "MIT"

  def install
    bin.install "ObsidianMCPServer" => "obsidian-mcp-server"
  end

  test do
    assert_match "MCP Server ObsidianMCPServer", shell_output("#{bin}/obsidian-mcp-server --help 2>&1", 1)
  end
end
