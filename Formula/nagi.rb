# Release のバイナリを入れる formula（ビルドはしない）。nagi の scripts/homebrew-formula.sh が書き出す
class Nagi < Formula
  desc "Terminal TODO app (TUI and CLI); works offline, syncs to the cloud when logged in"
  homepage "https://github.com/myksyut/nagi"
  version "0.1.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.48/nagi-aarch64-apple-darwin.tar.gz"
      sha256 "60b4976b879830bec53191714e4b51e91d77d323972293b820d3f5731dfd1f1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/myksyut/nagi/releases/download/tui-v0.1.48/nagi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b14f8bc58346636fdf56906bc4fd6fced2735225dfca9924d5827301133ed4e3"
    end
  end

  def install
    bin.install "nagi"
  end

  test do
    assert_match "nagi 0.1.48", shell_output("#{bin}/nagi --version")
  end
end
