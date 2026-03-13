cask "panes" do
  version "0.41.0"
  sha256 "8cc3e9989d339c0d75052a31d8466ae03039376b9159c1929665e176252b097c"

  url "https://github.com/wygoralves/panes/releases/download/v0.41.0/Panes_0.41.0_universal.dmg"
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
