cask "panes" do
  version "0.57.1"
  sha256 "a46b04b691377862c8c8836be610992861d6b74968091fcab032c824f51bfd72"

  url "https://github.com/wygoralves/panes/releases/download/v0.57.1/Panes_0.57.1_universal.dmg"
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
