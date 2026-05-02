cask "panes" do
  version "0.59.0"
  sha256 "09178506f9ebc0eba15340a4babf29979948c3e4df7b0fa015e545ec19e4366f"

  url "https://github.com/wygoralves/panes/releases/download/v0.59.0/Panes_0.59.0_universal.dmg"
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
