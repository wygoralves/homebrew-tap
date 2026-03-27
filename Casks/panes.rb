cask "panes" do
  version "0.47.0"
  sha256 "d55e6bb5a6fa58ef19ae731a6acef96cb65750d52188917b6f873ce051ede390"

  url "https://github.com/wygoralves/panes/releases/download/v0.47.0/Panes_0.47.0_universal.dmg"
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
