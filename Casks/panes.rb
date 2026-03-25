cask "panes" do
  version "0.46.2"
  sha256 "85b94529bb2ea78d66156439e5cea6e1df6c9fb035ac5f3ba85e938d55b14d5f"

  url "https://github.com/wygoralves/panes/releases/download/v0.46.2/Panes_0.46.2_universal.dmg"
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
