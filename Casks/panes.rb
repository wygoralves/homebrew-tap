cask "panes" do
  version "0.62.1"
  sha256 "2391c89c05e740de70349706cab397ad686b5b7b30d4612a3a25b05cd3f2cebc"

  url "https://github.com/wygoralves/panes/releases/download/v0.62.1/Panes_0.62.1_universal.dmg"
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
