cask "panes" do
  version "0.43.0"
  sha256 "0268e327f7312342fb32ece8d4f4dbe620faeeb80cca68ab17b4b96fbec4e8be"

  url "https://github.com/wygoralves/panes/releases/download/v0.43.0/Panes_0.43.0_universal.dmg"
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
