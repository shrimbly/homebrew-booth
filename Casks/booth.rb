# Homebrew cask for Booth. app/scripts/release.sh fills in the @…@ values and writes the result to
# dist/booth.rb; with --publish it commits that as Casks/booth.rb to the tap (BOOTH_TAP), so:
#   brew install --cask shrimbly/booth/booth
cask "booth" do
  version "0.2.1"
  sha256 "26cb3d82bf89259e8ea4e6802f3b0d1483510d9e734734f1dab891a9f4c0647d"

  url "https://github.com/shrimbly/booth/releases/download/v#{version}/Booth-#{version}.dmg"
  name "Booth"
  desc "Studio-quality voice for your recordings, enhanced locally"
  homepage "https://getbooth.xyz/"

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
