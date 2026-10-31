# Booth for Homebrew

[Booth](https://github.com/shrimbly/booth) cleans up the voice in any video or audio file, on your
Mac. This tap installs it:

```bash
brew install --cask shrimbly/booth/booth
```

That installs Booth.app, puts the `booth` command on your `PATH`, and installs ffmpeg.
`brew upgrade` keeps it up to date, and `brew uninstall --cask --zap booth` also removes the
models and settings.

`Casks/booth.rb` is written by Booth's release workflow; change
[`packaging/homebrew/booth.rb.in`](https://github.com/shrimbly/booth/blob/main/packaging/homebrew/booth.rb.in)
instead.
