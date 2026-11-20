cask "leon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.0"
  sha256 arm:   "01defa391abb784c76f3b0b47fa1f30fb9693d3048f4848abe923abce5e5926f",
         intel: "3273a53bae7fd86fed1c634871764acf4be6d531356b02639ee3457a994e9ea2"

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
