cask "panes" do
  version "0.46.0"
  sha256 "08f5376b94296ac77a7423784c4cf2e873c05170be652368b40f52952e8d8919"

  url "https://github.com/wygoralves/panes/releases/download/v0.46.0/Panes_0.46.0_universal.dmg"
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
