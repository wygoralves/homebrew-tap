cask "panes" do
  version "0.46.1"
  sha256 "fea09abe469acd16506fe7c73aa2159bd48bfc047eaf78d39275cc431c28f952"

  url "https://github.com/wygoralves/panes/releases/download/v0.46.1/Panes_0.46.1_universal.dmg"
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
