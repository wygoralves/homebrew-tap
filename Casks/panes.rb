cask "panes" do
  version "0.31.1"
  sha256 "4e680f217408321b1784075c46e90952a8b2efb9061b3e4e7e731179c505dfbe"

  depends_on arch: :arm64

  url "https://github.com/wygoralves/panes/releases/download/v0.31.1/Panes_0.31.1_aarch64.dmg"
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
