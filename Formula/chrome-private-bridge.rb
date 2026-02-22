class ChromePrivateBridge < Formula
  desc "MCP-native Chrome browser automation bridge"
  homepage "https://github.com/xiaolai/chrome-private-bridge"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xiaolai/chrome-private-bridge/releases/download/v0.2.2/chrome-private-bridge-darwin-arm64.tar.gz"
      sha256 "47b7fd152fa717d89e0a0f0c06970c2e535765296826df88a3e0516148fb0f14"
    else
      url "https://github.com/xiaolai/chrome-private-bridge/releases/download/v0.2.2/chrome-private-bridge-darwin-x64.tar.gz"
      sha256 "23ae8c96040921ca3afd4b4c32980f6f6cf096514aafffe6787b9f65cfbc9ab0"
    end
  end

  on_linux do
    url "https://github.com/xiaolai/chrome-private-bridge/releases/download/v0.2.2/chrome-private-bridge-linux-x64.tar.gz"
    sha256 "3110469136bc5659590281431de3d71cd814bdac4549124c1eac9ce65785b217"
  end

  def install
    bin.install Dir["chrome-private-bridge*"].first => "chrome-private-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chrome-private-bridge version")
  end
end
