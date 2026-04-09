cask "panes" do
  version "0.53.0"
  sha256 "9c723a55a891214254187c0da8a6349826f290ba6220d329f14d96aa0967a421"

  url "https://github.com/wygoralves/panes/releases/download/v0.53.0/Panes_0.53.0_universal.dmg"
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
