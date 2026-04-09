cask "panes" do
  version "0.54.1"
  sha256 "dd8ba4481f4b22527b8e2f710b25d38b4dd5e8571588cbfc04bbfcd8fea5631c"

  url "https://github.com/wygoralves/panes/releases/download/v0.54.1/Panes_0.54.1_universal.dmg"
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
