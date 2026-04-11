class Creft < Formula
  desc "Executable skills for Agents"
  homepage "https://github.com/chrisfentiman/creft"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.2.6/creft-0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "8738d45f5e128eef3069485db6144bd11661d73026b60e16a1994434283f29c6"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.2.6/creft-0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "52b164153c88f4a45c1647f325f80dbc93fe218aa26f9063eb51ea4bb0b91751"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.2.6/creft-0.2.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7db6abe14ee6f3906cc580393c1d9a9cff5d52098ce0a35ed4c28b34bdc9b35d"
    else
      url "https://github.com/chrisfentiman/creft/releases/download/creft-v0.2.6/creft-0.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23b5caaf98756eb647dbe945b2a96f368332c9167dc551fc4337429b831b0c13"
    end
  end

  def install
    bin.install "creft"
  end

  test do
    system "#{bin}/creft", "--version"
  end
end
