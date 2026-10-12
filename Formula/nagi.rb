# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.65"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.65/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "8f3147aeb692ef20908975e1464800c78eb4d27d7dae1181f6c7d590d68d8f56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.65/nagi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e228f852f09eecabe7520d8a4d965ce5fd852cd4cad66a425543d04fe5f88d52"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.65", shell_output("#{bin}/nagi --version")
  end
end
