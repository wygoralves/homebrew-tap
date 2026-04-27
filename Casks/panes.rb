cask "panes" do
  version "0.57.0"
  sha256 "4d40d21d2edfde67b8e406f711e41d95dd53d8516bd82dbc637264e36742897e"

  url "https://github.com/wygoralves/panes/releases/download/v0.57.0/Panes_0.57.0_universal.dmg"
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
