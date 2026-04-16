class Creft < Formula
  desc "Executable skills for Agents"
  homepage "https://github.com/chrisfentiman/creft"
  version "creft-v0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.1/creft-creft-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "0e150dd8664df27f9145d70aea3de7ccc3a52f01cbeaeb43fef9086f695a9d33"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.1/creft-creft-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "1305de7bff9b70c066be1773142748c1206530b23900fc0bbfd20a42837b9451"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.1/creft-creft-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a03a36df242e3a768308c7551441abd1dc0a738bf51609c7b8de93ab0158fa75"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.1/creft-creft-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d658510ba7d40956401dac5a6786b6910c2814e12d890f31fc127b0ec0a1239"
    end
  end

  def install
    bin.install "creft"
  end

  test do
    system "#{bin}/creft", "--version"
  end
end
