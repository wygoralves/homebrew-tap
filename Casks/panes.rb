cask "panes" do
  version "0.56.1"
  sha256 "58dd53876eb4c6ed67adbf03eac03ce57d4ff4187504b2a3aa2a9c23aa3e82be"

  url "https://github.com/wygoralves/panes/releases/download/v0.56.1/Panes_0.56.1_universal.dmg"
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
