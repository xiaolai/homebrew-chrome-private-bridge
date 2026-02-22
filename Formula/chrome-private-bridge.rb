class ChromePrivateBridge < Formula
  desc "MCP-native Chrome browser automation bridge"
  homepage "https://github.com/xiaolai/chrome-private-bridge"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xiaolai/chrome-private-bridge/releases/download/v0.2.4/chrome-private-bridge-darwin-arm64.tar.gz"
      sha256 "806da1217b68889e02283110769d1ff3346c1117c7aae4a7e0a1d6a95790343e"
    else
      url "https://github.com/xiaolai/chrome-private-bridge/releases/download/v0.2.4/chrome-private-bridge-darwin-x64.tar.gz"
      sha256 "d463754901fd6069c75d361fce2010117c1683aeef169b3fc92c4300676f1888"
    end
  end

  on_linux do
    url "https://github.com/xiaolai/chrome-private-bridge/releases/download/v0.2.4/chrome-private-bridge-linux-x64.tar.gz"
    sha256 "705a034af995a1f7c2a0226d1b0c042eb1a187cfd31ae5f4c2763c6c592cc861"
  end

  def install
    bin.install Dir["chrome-private-bridge*"].first => "chrome-private-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chrome-private-bridge version")
  end
end
