cask "panes" do
  version "0.61.0"
  sha256 "f12022baf4953126a2831c88df1ada7b50dabff3a35451ca00cf83108ab16869"

  url "https://github.com/wygoralves/panes/releases/download/v0.61.0/Panes_0.61.0_universal.dmg"
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
