class Creft < Formula
  desc "Executable skills for Agents"
  homepage "https://github.com/chrisfentiman/creft"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.4.0/creft-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "3f236dee8f83575617c6091bcd7a4944a1e2513701090365b074421b2b3b445e"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.4.0/creft-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "944982453b2c3f505a3cfa254e86b5139562f3db07ee4c0b3ec31ae60c184e88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.4.0/creft-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e026487a87cf244ca1835d4b047acdd8dd8d92b236b70adcef9bd5d8fb1aad3"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.4.0/creft-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b0c532bd4b9af94c41a54afe14321ead46daf2b6144a2d44a995f341ab2b502"
    end
  end

  def install
    bin.install "creft"
  end

  test do
    system "#{bin}/creft", "--version"
  end
end
