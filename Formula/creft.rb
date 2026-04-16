class Creft < Formula
  desc "Executable skills for Agents"
  homepage "https://github.com/chrisfentiman/creft"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.2/creft-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "92a145db8422f9ad490f38a59e5c5e108ff1c5cb4b4f0155768597c0817799c4"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.2/creft-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "7e802d317b2d99c2760bd8b8d58f2054e1976032ec435b64b54414ff0fd75151"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.2/creft-0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "68d073b45232f1c6596afe50581411a0f69b87935c36201f980a5c8b67287def"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.2/creft-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a612f5e81e5ebc30a345fb61aa13c81ac111488bcd77270a80832fed2a7afbf6"
    end
  end

  def install
    bin.install "creft"
  end

  test do
    system "#{bin}/creft", "--version"
  end
end
