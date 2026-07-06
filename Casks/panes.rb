cask "panes" do
  version "0.60.0"
  sha256 "4a6087e31e860ea5e815dff63548db509d3573844ecfe1cb7a4a4c3fed5ffc63"

  url "https://github.com/wygoralves/panes/releases/download/v0.60.0/Panes_0.60.0_universal.dmg"
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
