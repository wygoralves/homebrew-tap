cask "panes" do
  version "0.40.0"
  sha256 "4ef9f37b9a00756a650aed5b74c5d8b9187a8b49f291352c107b05bdfc6b416c"

  url "https://github.com/wygoralves/panes/releases/download/v0.40.0/Panes_0.40.0_universal.dmg"
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
