# Homebrew tap for Shipshape

[Shipshape](https://github.com/toddsherman/shipshape) is a free, open-source Mac app that tells you when the tools you build with have a published security fix or a malicious release.

```sh
brew install --cask toddsherman/shipshape/shipshape
```

If Homebrew says the tap is untrusted, run `brew trust --cask toddsherman/shipshape/shipshape` first.

Shipshape installs its own updates once it's running, so Homebrew leaves it alone unless you run `brew upgrade --greedy`. The download is the same signed and notarized disk image as on the [Releases](https://github.com/toddsherman/shipshape/releases) page.
