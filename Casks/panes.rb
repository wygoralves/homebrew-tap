cask "panes" do
  version "0.65.1"
  sha256 "1eb977323f56a03366e15674164eb42be002e0b73226c7f4859ec506d43a1a5e"

  url "https://github.com/wygoralves/panes/releases/download/v0.65.1/Panes_0.65.1_universal.dmg"
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
