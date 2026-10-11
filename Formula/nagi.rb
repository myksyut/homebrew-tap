# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.36/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "c06eec1174baf5c10a575bc54f5813cc6018d99030f4cf0a16ecaad63d9cf662"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.36/nagi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b418d9e41e4482a2df1e710bb63bd56a54c768c284f80d17f2e2276b3d089a64"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.36", shell_output("#{bin}/nagi --version")
  end
end
