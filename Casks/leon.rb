cask "leon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "4e7270dd8d0b67585fa255636ee02ae81826ed2d12198eed49de9d85549af188",
         intel: "e1121b2726c7906e51bd3ce9db5c91300c0e04cf1824b696504a57440cafa9ba"

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
