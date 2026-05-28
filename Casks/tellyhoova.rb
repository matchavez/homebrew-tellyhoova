cask "tellyhoova" do
  version "1.0.1"
  sha256 "5a77f2d6009fdad391f8cdc531e17e6a316e27b8209e2042c468b5a67c6c3919"

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
