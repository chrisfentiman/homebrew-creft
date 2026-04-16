class Creft < Formula
  desc "Executable skills for Agents"
  homepage "https://github.com/chrisfentiman/creft"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.3/creft-0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "4ab10e17f4e256d307515e50594af33e2ed28d7160185529fd5e5c533676d83e"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.3/creft-0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "ac6fbcbaa3d2e35aec210431c934774833742efc401c15ac190f5bcb8d78c240"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.3/creft-0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a6d157f3bcc06d1194aa1385206b858e067b0f8f85cfd78f9207811a7aee864"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.3.3/creft-0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f649b45123778e500eee59afcad3ee51946071ee1ca3848ec1491ab3286516e"
    end
  end

  def install
    bin.install "creft"
  end

  test do
    system "#{bin}/creft", "--version"
  end
end
