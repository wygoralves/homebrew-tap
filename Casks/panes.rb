cask "panes" do
  version "0.58.0"
  sha256 "5c3fa251be1794d53bb9b460e142ad125cb905ed3dbf1791f714b532e00e00ee"

  url "https://github.com/wygoralves/panes/releases/download/v0.58.0/Panes_0.58.0_universal.dmg"
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
