cask "panes" do
  version "0.37.0"
  sha256 "65bff5e4299de098c1a39bb57a0d7908a65eaf0dfcc667d6401a02412471bf31"

  url "https://github.com/wygoralves/panes/releases/download/v0.37.0/Panes_0.37.0_universal.dmg"
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
