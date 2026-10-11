# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.40/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "f7049429d2ec64da81e2210eda9c256a91cdd2e65eb27695414667ec1275c393"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.40/nagi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1470f6604a274cdd0c1cf8eee652324b5cb316d9dadc081aad9b05f6197c6c7e"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.40", shell_output("#{bin}/nagi --version")
  end
end
