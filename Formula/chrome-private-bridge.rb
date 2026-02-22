class ChromePrivateBridge < Formula
  desc "MCP-native Chrome browser automation bridge"
  homepage "https://github.com/xiaolai/chrome-private-bridge"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xiaolai/chrome-private-bridge/releases/download/v0.2.0/chrome-private-bridge-darwin-arm64.tar.gz"
      sha256 "b6c833beba6ed1fa871e5021983e22b7ed5cadd0c78af4db1f030816da7ace2d"
    else
      url "https://github.com/xiaolai/chrome-private-bridge/releases/download/v0.2.0/chrome-private-bridge-darwin-x64.tar.gz"
      sha256 "1d375e5dbe85f3e769d30619eb274ab835aef63290d4240babdc482bf3dd81ff"
    end
  end

  on_linux do
    url "https://github.com/xiaolai/chrome-private-bridge/releases/download/v0.2.0/chrome-private-bridge-linux-x64.tar.gz"
    sha256 "71b81e2f78f961a32f8bf1470415740820292fbece8ceb1de1c8fa802e893426"
  end

  def install
    bin.install Dir["chrome-private-bridge*"].first => "chrome-private-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chrome-private-bridge version")
  end
end
