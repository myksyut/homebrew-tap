# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.55/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "fce865f53f971d47a5288eac7d0030c803fb0e415646de804968f16627529644"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.55/nagi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b188a38ae786be34be60e24c0f7926fb90e00424267a13bbd0738bb5413c5891"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.55", shell_output("#{bin}/nagi --version")
  end
end
