cask "panes" do
  version "0.32.1"
  sha256 "fc64e38b1fdc141764f07b91ee5c21b39bef339fd44f51394f152c6beab91368"

  depends_on arch: :arm64

  url "https://github.com/wygoralves/panes/releases/download/v0.32.1/Panes_0.32.1_aarch64.dmg"
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
