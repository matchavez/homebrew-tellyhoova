cask "tellyhoova" do
  version "1.0.6"
  sha256 "1ce1ada95485087c5744a04ba8db41b4c2661e7514ea0b699dfd4c071318cbd0"

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
