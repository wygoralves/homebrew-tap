cask "panes" do
  version "0.45.2"
  sha256 "d75401b0f73c5dacb7985b7cd78b7886015721b08c88e58263e6a20ddeb589bc"

  url "https://github.com/wygoralves/panes/releases/download/v0.45.2/Panes_0.45.2_universal.dmg"
  name "Panes"
  desc "Local-first cockpit for AI-assisted coding"
  homepage "https://github.com/wygoralves/panes"

  app "Panes.app"

  postflight do
    # Best-effort friction reduction for unsigned / unnotarized builds.
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/Panes.app"]
  end

  zap trash: [
    "~/.agent-workspace",
  ]
end
