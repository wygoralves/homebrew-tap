cask "panes" do
  version "0.66.0"
  sha256 "9d65d7c7217ce21bb4028e553fc32ca0441172fdb41f0c13ce632928bcf20a7b"

  url "https://github.com/wygoralves/panes/releases/download/v0.66.0/Panes_0.66.0_universal.dmg"
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
