cask "leon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "bdc268ec827301c5a873a78939c41e7f6a9abae732f2c2ac87dae51c70fb535f",
         intel: "a4e182e30f53d12b3c75031195ed6e0be79d5bac5a6a76589a2764ef620f527c"

  url "https://github.com/aindong/leon-cli/releases/download/v#{version}/Leon-#{version}-macos-#{arch}.zip"
  name "Leon"
  desc "Terminal multiplexer with a native app, a CLI and a socket API"
  homepage "https://github.com/aindong/leon-cli"

  depends_on :macos

  app "Leon.app"
  binary "#{appdir}/Leon.app/Contents/MacOS/leon"

  caveats <<~EOS
    Leon is signed ad hoc and not notarized, so macOS will not open it until
    you remove the quarantine flag that Homebrew puts on every download:

      xattr -dr com.apple.quarantine "#{appdir}/Leon.app"

    The leon command is the binary inside the app, so it needs that too.
  EOS
end
