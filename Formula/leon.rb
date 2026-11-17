class Leon < Formula
  desc "Fast, scriptable terminal multiplexer (server and CLI)"
  homepage "https://github.com/aindong/leon-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aindong/leon-cli/releases/download/v0.1.0/leon-0.1.0-arm64-macos.tar.gz"
      sha256 "bedbd3f7955e9b8c2d40bc6ae4898a41e8816c714d5f071ed1eb3341f46d3d1a"
    end
    on_intel do
      url "https://github.com/aindong/leon-cli/releases/download/v0.1.0/leon-0.1.0-x86_64-macos.tar.gz"
      sha256 "d51c43349e823c8efc15f88e7596db4d61329c56e6ff677caa9709633b9e558d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aindong/leon-cli/releases/download/v0.1.0/leon-0.1.0-aarch64-linux.tar.gz"
      sha256 "ead137c431f46dee1aeb619ee26ac71409e6b0f8d70fd3677800477e0d6ac821"
    end
    on_intel do
      url "https://github.com/aindong/leon-cli/releases/download/v0.1.0/leon-0.1.0-x86_64-linux.tar.gz"
      sha256 "a392931bcee53fd1d9e3e70e153c238a401a2537d8d0b6fc62bb7f45db7d1144"
    end
  end

  def install
    bin.install "leon"
    doc.install "docs"
    prefix.install "THIRD-PARTY-NOTICES.txt"
  end

  test do
    assert_match "leon #{version}", shell_output("LEON_AUTOSTART=0 #{bin}/leon --version")
  end
end
