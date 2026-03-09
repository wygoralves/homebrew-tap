cask "panes" do
  version "0.35.0"
  sha256 "f99dfa6342bf33c606e68976e146d6ba9ac6bb5b5365eaccecc485f7391794ef"

  url "https://github.com/wygoralves/panes/releases/download/v0.35.0/Panes_0.35.0_universal.dmg"
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
