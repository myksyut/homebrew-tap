# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.62"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.62/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "f61b67ac9b66e703c8eeafe6c21ee54a4d3ed638a8e434212fb513aa05e9eec6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.62/nagi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb10e5512b86971b09e3dbe3946653f3b54a0cb51e136afb03cd7a597c4b415e"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.62", shell_output("#{bin}/nagi --version")
  end
end
