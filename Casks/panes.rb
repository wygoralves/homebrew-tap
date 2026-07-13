cask "panes" do
  version "0.63.0"
  sha256 "e1a85502a22b4c69bd98c14af4984cf883b7d85320633523d328ba86184ff853"

  url "https://github.com/wygoralves/panes/releases/download/v0.63.0/Panes_0.63.0_universal.dmg"
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
