cask "panes" do
  version "0.45.1"
  sha256 "b4dd1c859200c8a5733dc607f9f7d6fd7d24da279c716e83d15cc2a777a26ce9"

  url "https://github.com/wygoralves/panes/releases/download/v0.45.1/Panes_0.45.1_universal.dmg"
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
