cask "gestur" do
  version "0.1.0"
  sha256 "34e656ba4e7ae5f27a7b49cd12b99bc5ff240bef5c324920c43b8f9b293f37e5"

  url "https://github.com/wygoralves/gestur/releases/download/v0.1.0/Gestur-0.1.0-macOS.dmg"
  name "Gestur"
  desc "Fast browser mouse gestures for macOS"
  homepage "https://github.com/wygoralves/gestur"

  app "Gestur.app"

  uninstall quit: "com.gestur.Gestur"

  postflight do
    # Best-effort friction reduction for unsigned / unnotarized builds.
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/Gestur.app"]
  end

  zap trash: [
    "~/Library/Application Support/Gestur",
    "~/Library/Preferences/com.gestur.Gestur.plist",
  ]
end
