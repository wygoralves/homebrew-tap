cask "panes" do
  version "0.45.0"
  sha256 "270b58705e2f82fd9e9c11f7028ef5eb77dfdde12e69972fab54cb80531c4974"

  url "https://github.com/wygoralves/panes/releases/download/v0.45.0/Panes_0.45.0_universal.dmg"
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
