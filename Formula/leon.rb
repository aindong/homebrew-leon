class Leon < Formula
  desc "Fast, scriptable terminal multiplexer (server and CLI)"
  homepage "https://github.com/aindong/leon-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aindong/leon-cli/releases/download/v0.1.1/leon-0.1.1-arm64-macos.tar.gz"
      sha256 "a9ac642a34255cfb515df7c0bb4bcce110b0985910da7f3bdf7bedab344f098b"
    end
    on_intel do
      url "https://github.com/aindong/leon-cli/releases/download/v0.1.1/leon-0.1.1-x86_64-macos.tar.gz"
      sha256 "cc8a35f9697260941209878bce4b0658dadfca06a9139e4a3a3d0dfc302b3b9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aindong/leon-cli/releases/download/v0.1.1/leon-0.1.1-aarch64-linux.tar.gz"
      sha256 "0fd0e5f74c19afdc8273dbb83b73be60a69963e1bcff317f0b65dafc98ab5041"
    end
    on_intel do
      url "https://github.com/aindong/leon-cli/releases/download/v0.1.1/leon-0.1.1-x86_64-linux.tar.gz"
      sha256 "70aa8221081c7383841cf4907e93798ec34c75217d7ae8ffc6a89c984d28f186"
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
