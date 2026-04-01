cask "panes" do
  version "0.51.3"
  sha256 "6fb8a3d99755463eedeb6185fc316f1c5eab10749d5ec05e87d884a69a846426"

  url "https://github.com/wygoralves/panes/releases/download/v0.51.3/Panes_0.51.3_universal.dmg"
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
