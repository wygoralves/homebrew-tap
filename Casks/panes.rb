cask "panes" do
  version "0.64.0"
  sha256 "a4219a4f9e26754ba511cbb8389f91479e7c3fae02c340987f0ee673e9efbf3d"

  url "https://github.com/wygoralves/panes/releases/download/v0.64.0/Panes_0.64.0_universal.dmg"
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
