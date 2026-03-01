cask "nomnomdrive" do
  arch arm: "-arm64", intel: ""

  version "0.1.0"
  sha256 :no_check

  url "https://github.com/rinormaloku/nomnomdrive/releases/download/v#{version}/NomNomDrive-#{version}#{arch}.dmg"
  name "NomNomDrive"
  desc "Local AI-powered document search and chat"
  homepage "https://github.com/rinormaloku/nomnomdrive"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  app "NomNomDrive.app"

  zap trash: [
    "~/Library/Application Support/NomNomDrive",
    "~/Library/Preferences/io.nomnomdrive.app.plist",
  ]
end
