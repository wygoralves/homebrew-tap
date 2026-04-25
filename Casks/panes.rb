cask "panes" do
  version "0.56.2"
  sha256 "54b76ac973071b126bcd73d5ed081154ae7bbafd2f7faaa3a886a20f5c9c3f62"

  url "https://github.com/wygoralves/panes/releases/download/v0.56.2/Panes_0.56.2_universal.dmg"
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
