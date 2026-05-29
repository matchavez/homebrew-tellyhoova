cask "tellyhoova" do
  version "1.0.2"
  sha256 "f0ba34558ad360fd24f5ddb275ccb188637f0b3d791c4862dcfc378559af2c4b"

  url "https://github.com/matchavez/tellyhoova/releases/download/v#{version}/Tellyhoova-#{version}.dmg"
  name "Tellyhoova"
  desc "macOS yt-dlp frontend for downloading videos and audio"
  homepage "https://github.com/matchavez/tellyhoova"

  depends_on macos: ">= :sequoia"

  app "Tellyhoova.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/Tellyhoova.app"]
  end

  zap trash: [
    "~/Library/Application Support/Tellyhoova",
    "~/Library/Preferences/com.matchavez.tellyhoova.plist",
  ]
end
