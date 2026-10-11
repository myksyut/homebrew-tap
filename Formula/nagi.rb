# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.38/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "f9a19f673e53222a11898aa37ede612d0d584235d389631279533980e36761a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.38/nagi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c372ec6d1986b8a306edf1af983b608b399eacf1c35ab2ef4c23da0c1eb619e4"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.38", shell_output("#{bin}/nagi --version")
  end
end
