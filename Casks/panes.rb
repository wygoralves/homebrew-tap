cask "panes" do
  version "0.59.1"
  sha256 "cb6966286be62f41c67a4f7096dbc6ac91c01830c9f7ccfdb3cdf7d0207e6bc3"

  url "https://github.com/wygoralves/panes/releases/download/v0.59.1/Panes_0.59.1_universal.dmg"
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
