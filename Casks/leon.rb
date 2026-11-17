cask "leon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "f23db22e3d8b3e81355b57a57d5d6a46e04057dcf094fb2341cb50e24457fd67",
         intel: "8aea1bf960d5188dfe325d051e05635b5a2b2c0929c852443c98156b5e57527b"

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
