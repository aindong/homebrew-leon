class Leon < Formula
  desc "Fast, scriptable terminal multiplexer (server and CLI)"
  homepage "https://github.com/aindong/leon-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aindong/leon-cli/releases/download/v0.1.0/leon-0.1.0-arm64-macos.tar.gz"
      sha256 "acf94a238a70ed217e04a517328372b9fc5fe8a3a516359f161a9c194f1dce04"
    end
    on_intel do
      url "https://github.com/aindong/leon-cli/releases/download/v0.1.0/leon-0.1.0-x86_64-macos.tar.gz"
      sha256 "f464307169d04d97f232d16f0d5f29e40743f74cf5392bd89b39f8faa1083531"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aindong/leon-cli/releases/download/v0.1.0/leon-0.1.0-aarch64-linux.tar.gz"
      sha256 "bf965eacddb9bd61d7486b0c1a8bd32a330aa114f94282711e8aece6bf8bf907"
    end
    on_intel do
      url "https://github.com/aindong/leon-cli/releases/download/v0.1.0/leon-0.1.0-x86_64-linux.tar.gz"
      sha256 "1769dcb4eca3ffeafaf078251ca068336458e795caf9d8f5ee09e8b3b249f102"
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
