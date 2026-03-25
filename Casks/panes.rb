cask "panes" do
  version "0.46.3"
  sha256 "f4ad70627aac6636c4d45059a8f889c220e5568492cf8611e7de45e526b3a91d"

  url "https://github.com/wygoralves/panes/releases/download/v0.46.3/Panes_0.46.3_universal.dmg"
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
