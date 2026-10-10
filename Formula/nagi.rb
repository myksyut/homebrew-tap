# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.20/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "d21829658724b3b198d9e1dc9635c1a57f756053dec550b3e0bed59828e8e986"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.20/nagi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7b47d4a23adc11e0436aac9ab4d29a3c5b079bf0ee1be9c6782b68a4f408bb2"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.20", shell_output("#{bin}/nagi --version")
  end
end
