cask "claude-caffeine" do
  version "1.3.6"
  sha256 "47b2039c9b1676f17716ceaac935fc8679d77e6e7d0dc731bdd02d78a3e74f17"

  url "https://github.com/jmslau/claude-caffeine/releases/download/v#{version}/Claude-Caffeine.app.zip",
      verified: "github.com/jmslau/claude-caffeine/"
  name "Claude Caffeine"
  desc "Keeps your Mac awake while Claude Code or a local Cursor agent is working"
  homepage "https://github.com/jmslau/claude-caffeine"

  depends_on macos: ">= :ventura"

  app "Claude Caffeine.app"

  caveats <<~EOS
    Claude Caffeine can optionally install a privileged helper to prevent
    sleep when the lid is closed. On first launch, the app will prompt you
    to install this helper (requires an admin password).

    If the app is quit unexpectedly and your Mac never sleeps, run:
      sudo pmset -a disablesleep 0
  EOS
end
