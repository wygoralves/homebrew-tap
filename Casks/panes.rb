cask "panes" do
  version "0.62.0"
  sha256 "5ce93f3a1fe995ac9b81f13787abef88b406b6d134ceda0c1fcdbce624f69078"

  url "https://github.com/wygoralves/panes/releases/download/v0.62.0/Panes_0.62.0_universal.dmg"
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
