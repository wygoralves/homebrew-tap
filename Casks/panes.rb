cask "panes" do
  version "0.38.0"
  sha256 "0f846039395b3d84b5b369b263535d51bad65fdb94631af72a8bf2e63ee2bc2f"

  url "https://github.com/wygoralves/panes/releases/download/v0.38.0/Panes_0.38.0_universal.dmg"
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
