cask "mindspace" do
  version "0.1.3"
  sha256 "83fcb891763f997a3ebca4ed6a095cb4aa01a6f2fd11fdb4b8cbdd28026f0351"

  url "https://github.com/sanjana-venkat/mindspace/releases/download/v#{version}/Mindspace-#{version}.dmg"
  name "Mindspace"
  desc "Infinite canvas for screen captures and the thoughts behind them"
  homepage "https://github.com/sanjana-venkat/mindspace"

  depends_on macos: :sonoma

  app "Mindspace.app"

  # Ad-hoc signed rather than notarized, so Homebrew quarantines it. A
  # postflight xattr can't help (the flag lands after postflight runs) and
  # Homebrew 6 dropped --no-quarantine, so the first launch needs right-click →
  # Open. Goes away with a Developer ID signature.

  zap trash: [
    "~/Library/Application Support/Notefy",
    "~/Library/Preferences/com.notefy.app.plist",
  ]
end
