cask "tellyhoova" do
  version "1.0.0"
  sha256 "622e075be0e3765d3d608c258c7d4265964d4239193d2b3c26f504a916f497a9"

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
