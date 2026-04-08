cask "panes" do
  version "0.52.0"
  sha256 "6b9bba160ad1e781942dd093969d795ff61f7b2481124447da5bb5a686acdba9"

  url "https://github.com/wygoralves/panes/releases/download/v0.52.0/Panes_0.52.0_universal.dmg"
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
