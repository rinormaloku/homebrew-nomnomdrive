cask "nomnomdrive" do
  arch arm: "-arm64", intel: ""

  version "0.2.7"
  sha256 arm:   "202ab9049fd1ab0a888eca5fd28f2fcac0ce17056443951bfe6a4ac79e843232",
         intel: :no_check

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
