cask "panes" do
  version "0.42.0"
  sha256 "f9805520210ae2571a52fa8baa7b6b6caf4482be3a138216039c085d504784cc"

  url "https://github.com/wygoralves/panes/releases/download/v0.42.0/Panes_0.42.0_universal.dmg"
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
