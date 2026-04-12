class Creft < Formula
  desc "Executable skills for Agents"
  homepage "https://github.com/chrisfentiman/creft"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.2.7/creft-0.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "c00d7aa2bf5f33d740268043a3222af5eb7016dfd0c53c29725521050a2c51e5"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.2.7/creft-0.2.7-x86_64-apple-darwin.tar.gz"
      sha256 "140fe92d07c113d9f6f4d45a9dcdafd6827024c91f79b60ce5df00269b72305a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.2.7/creft-0.2.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5519466fafd898f56f1f5402d9e2d156c91deeaa08123b4b85958eac8f91810f"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.2.7/creft-0.2.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3fcf6499c8d9da7bce6f631f664781577a8481fb3260ce4938c74f4910606f85"
    end
  end

  def install
    bin.install "creft"
  end

  test do
    system "#{bin}/creft", "--version"
  end
end
