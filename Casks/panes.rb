cask "panes" do
  version "0.49.1"
  sha256 "2bc2fbcb350cfc0362f5aa826e7e58c7e24cab9f7eb6994046d7c23a37e4e499"

  url "https://github.com/wygoralves/panes/releases/download/v0.49.1/Panes_0.49.1_universal.dmg"
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
