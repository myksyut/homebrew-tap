# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.16/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "c587caf937ee6338ccc243e2fd2fced51266fde6bc52be3dddee7ae04a5f1363"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.16/nagi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6cab0ed1e927597c9f101ea06ff1942e54278464ef0e2f276c8b77f5c30b0fbc"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.16", shell_output("#{bin}/nagi --version")
  end
end
