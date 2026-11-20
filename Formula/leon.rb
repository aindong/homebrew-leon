class Leon < Formula
  desc "Fast, scriptable terminal multiplexer (server and CLI)"
  homepage "https://github.com/aindong/leon-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aindong/leon-cli/releases/download/v0.2.0/leon-0.2.0-arm64-macos.tar.gz"
      sha256 "51a95f6387ef8e0dcc4640298d5bbae6d789a76051ba1913c2e28571ccee1024"
    end
    on_intel do
      url "https://github.com/aindong/leon-cli/releases/download/v0.2.0/leon-0.2.0-x86_64-macos.tar.gz"
      sha256 "446c845eaa7233d74aa557a1ed306d644f6ccb12d7977993eafe8e595f45aeb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aindong/leon-cli/releases/download/v0.2.0/leon-0.2.0-aarch64-linux.tar.gz"
      sha256 "114fb732f8e641c0ff094730a7aa79280270ff4b49727bf659f6f71f922192c0"
    end
    on_intel do
      url "https://github.com/aindong/leon-cli/releases/download/v0.2.0/leon-0.2.0-x86_64-linux.tar.gz"
      sha256 "fb2869806bda94db2498a1ca1a609518129605091b43ef399c5784ce03c2976a"
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
