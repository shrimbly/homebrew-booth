# Booth for Homebrew

[Booth](https://getbooth.vercel.app) cleans up the voice in any video or audio file, on your Mac.
This tap installs it:

```bash
brew install --cask shrimbly/booth/booth
```

That installs Booth.app, puts the `booth` command on your `PATH`, and installs ffmpeg.
`brew upgrade` keeps it up to date, and `brew uninstall --cask --zap booth` also removes the
models and settings.

It needs macOS 14 or later on Apple silicon. The source, the releases and the issue tracker are
in [shrimbly/booth](https://github.com/shrimbly/booth).

`Casks/booth.rb` is written by Booth's release workflow; change
[`packaging/homebrew/booth.rb.in`](https://github.com/shrimbly/booth/blob/main/packaging/homebrew/booth.rb.in)
instead.
