# neosergio/tap

Homebrew formulae.

```sh
brew install neosergio/tap/git-wrong-email
```

| Formula | |
|---|---|
| [git-wrong-email](https://github.com/neosergio/git-wrong-email) | Refuse commits and pushes made under the wrong email |

## Releasing a new version of a formula

```sh
curl -sL https://github.com/neosergio/<repo>/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
```

Update `url` and `sha256` in `Formula/<name>.rb`, then
`brew audit --strict --online neosergio/tap/<name>` and
`brew test neosergio/tap/<name>` before pushing.
