# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.22/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "781d77f9876e9e20c44e39889b44578c1324b3f35debeb3bc2a0378f683ffd06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.22/nagi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "268a8dc43cc1aa0f1fc064a1d78afc5172d9b270dfe0a2511bcf3ce58f89c78c"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.22", shell_output("#{bin}/nagi --version")
  end
end
