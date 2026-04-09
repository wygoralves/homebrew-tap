cask "panes" do
  version "0.54.0"
  sha256 "505fe87844398dc170ddb41e470c0f5b52d729ac0c3ab046d5c92fe5d55e3450"

  url "https://github.com/wygoralves/panes/releases/download/v0.54.0/Panes_0.54.0_universal.dmg"
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
