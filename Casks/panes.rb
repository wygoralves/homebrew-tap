cask "panes" do
  version "0.55.0"
  sha256 "52f4b9ebe4b4896d221c04b5b03843554b60df37654359c13dabcd449429c129"

  url "https://github.com/wygoralves/panes/releases/download/v0.55.0/Panes_0.55.0_universal.dmg"
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
