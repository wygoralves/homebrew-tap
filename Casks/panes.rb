cask "panes" do
  version "0.46.4"
  sha256 "8e4bb59433fdfe618cce4466891d1869d7fc7fba8b763f20547eb5f8496627a7"

  url "https://github.com/wygoralves/panes/releases/download/v0.46.4/Panes_0.46.4_universal.dmg"
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
