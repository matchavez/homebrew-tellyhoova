cask "tellyhoova" do
  version "1.0.1"
  sha256 "5a77f2d6009fdad391f8cdc531e17e6a316e27b8209e2042c468b5a67c6c3919"

  url "https://github.com/matchavez/tellyhoova/releases/download/v#{version}/Tellyhoova-#{version}.dmg"
  name "Tellyhoova"
  desc "macOS yt-dlp frontend for downloading videos and audio"
  homepage "https://github.com/matchavez/tellyhoova"

  depends_on macos: ">= :sequoia"

  app "Tellyhoova.app"

  caveats <<~EOS
    Tellyhoova is not code-signed. If macOS says the app is "damaged",
    run the following command after installation:

      xattr -dr com.apple.quarantine /Applications/Tellyhoova.app

    Alternatively, install with quarantine disabled:

      brew install --cask --no-quarantine matchavez/tellyhoova/tellyhoova
  EOS

  zap trash: [
    "~/Library/Application Support/Tellyhoova",
    "~/Library/Preferences/com.matchavez.tellyhoova.plist",
  ]
end
