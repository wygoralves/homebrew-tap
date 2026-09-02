cask "panes" do
  version "0.65.0"
  sha256 "2e3b59b79945e995d42b4f93db2a047852485449250ac163512efcdead78fb3e"

  url "https://github.com/wygoralves/panes/releases/download/v0.65.0/Panes_0.65.0_universal.dmg"
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
