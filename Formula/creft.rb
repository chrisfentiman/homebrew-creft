class Creft < Formula
  desc "Executable skills for Agents"
  homepage "https://github.com/chrisfentiman/creft"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.2.8/creft-0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "355f4ce540775440a02961e085a645e48dc0c6cad32a7308ad5bb3500f146783"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.2.8/creft-0.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "bf64756c85db0431184754cf51119a6eafbb81a67d14d762663b15872d006888"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.2.8/creft-0.2.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e58e96402104a3814a67f770c3c9c37274b7f5755269e99f3095f70034d2c1ce"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.2.8/creft-0.2.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88c33d3ec675d7eb42725cf2774a303eac1c54a9c6b71cb03a18b22f022fe3cc"
    end
  end

  def install
    bin.install "creft"
  end

  test do
    system "#{bin}/creft", "--version"
  end
end
