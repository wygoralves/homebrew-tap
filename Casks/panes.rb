cask "panes" do
  version "0.56.0"
  sha256 "2eb7b48343c66767a036e5344fb74acc61015d1dd5db221edb37840e9feec650"

  url "https://github.com/wygoralves/panes/releases/download/v0.56.0/Panes_0.56.0_universal.dmg"
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
