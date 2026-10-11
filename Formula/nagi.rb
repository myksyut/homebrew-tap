# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.45/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "6b93e9f050915aca331592022017936e7fe584cbf96db9ccf3c0b3ef48c72d57"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.45/nagi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f43ebe203ff2ede3198dd2ce095ba8515ce1f3a69e68cac4dabd14af1ab56488"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.45", shell_output("#{bin}/nagi --version")
  end
end
