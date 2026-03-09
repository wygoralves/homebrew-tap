cask "panes" do
  version "0.36.0"
  sha256 "5d791b063c2cda5aa5e70237ff435ef5905ab91baf73b7045743407ddae5276f"

  url "https://github.com/wygoralves/panes/releases/download/v0.36.0/Panes_0.36.0_universal.dmg"
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
