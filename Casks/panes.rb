cask "panes" do
  version "0.33.2"
  sha256 "e21ca55d6883351b00dca81d5dc8b8c6973884b8cb21a4e785ea8e44939a3f93"

  depends_on arch: :arm64

  url "https://github.com/wygoralves/panes/releases/download/v0.33.2/Panes_0.33.2_aarch64.dmg"
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
