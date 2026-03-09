cask "panes" do
  version "0.34.1"
  sha256 "41b4892547e6e2546a7a3417edaf992a98fcb04e424cc04d28c221bb5e071aea"

  url "https://github.com/wygoralves/panes/releases/download/v0.34.1/Panes_0.34.1_universal.dmg"
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
