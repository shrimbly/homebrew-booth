# Homebrew cask for Booth. app/scripts/release.sh fills in the @…@ values and writes the result to
# dist/booth.rb; with --publish it commits that as Casks/booth.rb to the tap (BOOTH_TAP), so:
#   brew install --cask shrimbly/booth/booth
cask "booth" do
  version "0.1.0"
  sha256 "c9c61f24351ab3e32e18955423654e7d0a2cfc357bf1d9b053451460695bb780"

  url "https://github.com/shrimbly/booth/releases/download/v#{version}/Booth-#{version}.dmg"
  name "Booth"
  desc "Studio-quality voice for your recordings, enhanced locally"
  homepage "https://getbooth.vercel.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on formula: "ffmpeg"
  depends_on macos: :sonoma

  app "Booth.app"
  binary "#{appdir}/Booth.app/Contents/Resources/bin/booth"

  uninstall quit: "studio.booth.Booth"

  zap trash: [
    "~/.cache/booth",
    "~/Library/Application Support/Booth",
    "~/Library/Caches/Booth",
    "~/Library/Logs/Booth",
    "~/Library/Preferences/studio.booth.Booth.plist",
  ]
end
