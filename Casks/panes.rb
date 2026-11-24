cask "panes" do
  version "0.67.0"
  sha256 "9f9eef800c519ee6f688947b6c01b418f8e1ddab7057a831943bda4b2e893163"

  url "https://github.com/wygoralves/panes/releases/download/v0.67.0/Panes_0.67.0_universal.dmg"
  name "Panes"
  desc "Local-first cockpit for AI-assisted coding"
  homepage "https://github.com/wygoralves/panes"

  auto_updates true
  depends_on macos: :ventura

  app "Panes.app"

  postflight do
    # Best-effort friction reduction for unsigned / unnotarized builds.
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/Panes.app"]
  end

  zap launchctl: "com.panes.app.helper.keepawake",
      trash:     [
        "~/.agent-workspace",
      ]
end
