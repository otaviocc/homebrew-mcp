class ObsidianMcpServer < Formula
  desc "Model Context Protocol server for Obsidian vault interaction"
  homepage "https://github.com/otaviocc/ObsidianMCPServer"
  url "https://github.com/otaviocc/ObsidianMCPServer/archive/refs/tags/0.4.0.tar.gz"
  sha256 "8122f799fa43680f70bdd4b2543f2ea7dba68905be9357fdd23f212490e347c1"
  license "MIT"
  head "https://github.com/otaviocc/ObsidianMCPServer.git", branch: "main"

  depends_on xcode: ["26.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/ObsidianMCPServer" => "obsidian-mcp-server"
  end

  test do
    assert_match "MCP Server ObsidianMCPServer",
                 shell_output("#{bin}/obsidian-mcp-server --help 2>&1", 1)
  end
end
