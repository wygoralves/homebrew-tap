cask "panes" do
  version "0.51.4"
  sha256 "e821939d6e2ba5bedff746e10d93c707fe45c5b0c7b2d559a6b71c07605b7ddf"

  url "https://github.com/wygoralves/panes/releases/download/v0.51.4/Panes_0.51.4_universal.dmg"
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
