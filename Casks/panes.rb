cask "panes" do
  version "0.34.2"
  sha256 "ea11442e64b9227b67aca536666a18f994eb8b3e3d3bcd4578329dd2e6d48b42"

  url "https://github.com/wygoralves/panes/releases/download/v0.34.2/Panes_0.34.2_universal.dmg"
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
