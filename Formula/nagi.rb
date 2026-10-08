# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.18/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "345dbd3a8c61a661fb41c48ce06cbfa907958fc712e2f32ca3a22ba1eb890879"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.18/nagi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c9946cac6077719cbff1b5a049cb5a50d0fffd8ce71117ae44180c46553e5dd"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.18", shell_output("#{bin}/nagi --version")
  end
end
