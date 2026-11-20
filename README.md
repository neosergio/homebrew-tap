# neosergio/tap

Homebrew formulae and casks.

```sh
brew install neosergio/tap/git-wrong-email
brew install --cask neosergio/tap/latam-keyboard
```

| Formula | |
|---|---|
| [git-wrong-email](https://github.com/neosergio/git-wrong-email) | Refuse commits and pushes made under the wrong email |

| Cask | |
|---|---|
| [latam-keyboard](https://github.com/neosergio/Latam-Keyboard) | Latin American keyboard layouts for macOS |

## Releasing a new version of a formula

```sh
curl -sL https://github.com/neosergio/<repo>/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
```

Update `url` (or `version`, for a cask) and `sha256` in `Formula/<name>.rb` or `Casks/<name>.rb`, then
`brew audit --strict --online neosergio/tap/<name>` and
`brew test neosergio/tap/<name>` before pushing.
