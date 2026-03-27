cask "panes" do
  version "0.49.0"
  sha256 "dc1a1d5a22197a10d54e5b9d889a6a2047564c5edc717eda0176e0932319fe22"

  url "https://github.com/wygoralves/panes/releases/download/v0.49.0/Panes_0.49.0_universal.dmg"
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
