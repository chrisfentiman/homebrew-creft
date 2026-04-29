class Creft < Formula
  desc "Executable skills for Agents"
  homepage "https://github.com/chrisfentiman/creft"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.4.1/creft-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "d2c664e85263a9113b546056bd8b6cc0334847dceac3580ff3c89aadc1128c4b"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.4.1/creft-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "81df2834aef75fa98f1f1a6883fb8121a859c941fcb359a166f05b2d78e75a6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.4.1/creft-0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b423d677482088aff6f469c41d5254bad5722dc8be108d85501429cc258beeb0"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.4.1/creft-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56de89d7645c5812db06b14206bc2c6b65f9d3f00615d70ca17b99f7c3f65fd2"
    end
  end

  def install
    bin.install "creft"
  end

  test do
    system "#{bin}/creft", "--version"
  end
end
