cask "panes" do
  version "0.39.0"
  sha256 "5587948810d33f0403c6c3dddd00986e62ad79585f1ccbe3ebc63ed031bb76ed"

  url "https://github.com/wygoralves/panes/releases/download/v0.39.0/Panes_0.39.0_universal.dmg"
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
