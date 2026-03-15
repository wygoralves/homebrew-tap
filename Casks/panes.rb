cask "panes" do
  version "0.44.0"
  sha256 "cc4d85d9ebe014dd26d5657ca8e904046ee42a17bfa2126f98668b508a32cc03"

  url "https://github.com/wygoralves/panes/releases/download/v0.44.0/Panes_0.44.0_universal.dmg"
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
