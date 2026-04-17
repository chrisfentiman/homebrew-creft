class Creft < Formula
  desc "Executable skills for Agents"
  homepage "https://github.com/chrisfentiman/creft"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.4/creft-0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "85f4be386265dc98f0ce7751948132b1593b6abb02ecc9dff5045a15d14578ed"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.4/creft-0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "a8b7c899489a8db95d580ea34e0e44da341d00f824dbba5817ec4fc09034e6af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.4/creft-0.3.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe3b9b187bf203c6ce8787a8509fd6bafcf7c6099221a69651f8f5c938a346c0"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.4/creft-0.3.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e0632b240410c4863e0395fd33a66e6dd822c073a1521cfdef5b88b67409703"
    end
  end

  def install
    bin.install "creft"
  end

  test do
    system "#{bin}/creft", "--version"
  end
end
