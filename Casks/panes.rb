cask "panes" do
  version "0.31.0"
  sha256 "d918441a7114f75f53b2254b0c21667dfe8ba4e75dc54c2f059fc8533f82f685"

  depends_on arch: :arm64

  url "https://github.com/wygoralves/panes/releases/download/v0.31.0/Panes_0.31.0_aarch64.dmg"
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
