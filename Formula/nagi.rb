# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.77"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.77/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "ab74727c506de9fa726137f6c622c714bed70b3caf3557eda39988b4043381a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.77/nagi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b30acc8f11456ccd0d438eeba3ba5583dfda550e71c1209f36806f66a9964842"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.77", shell_output("#{bin}/nagi --version")
  end
end
