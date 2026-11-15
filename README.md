# homebrew-leon

The Homebrew tap for [leon](https://github.com/aindong/leon-cli): a terminal multiplexer with a
native macOS app, a CLI and a socket API.

```sh
brew install --cask aindong/leon/leon   # macOS: Leon.app, with the leon command
brew install aindong/leon/leon          # the CLI alone, on macOS or Linux
```

Pick one: the cask's `leon` is the one inside the app. `brew upgrade` brings new releases.

## After installing the app

Leon.app is signed ad hoc and not notarized, so macOS will not open it while it carries the
quarantine flag that Homebrew puts on every download. Before the first launch:

```sh
xattr -dr com.apple.quarantine /Applications/Leon.app
```

The formula needs no such step.

## How this tap is updated

`Casks/leon.rb` and `Formula/leon.rb` are written by leon's release workflow from each release's
signed manifest, so edits made here are overwritten. Report problems at
<https://github.com/aindong/leon-cli/issues>.
