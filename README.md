# Homebrew tap for Mindspace

    brew tap sanjana-venkat/mindspace
    brew trust sanjana-venkat/mindspace 2>/dev/null || true
    brew install --cask sanjana-venkat/mindspace/mindspace

Homebrew 6 will not load a cask from a personal tap until it is trusted — that
is the middle line, asked once per tap. Older Homebrew has no `trust` command
and does not need one, so the line is written to be a no-op there rather than
an error that stops the install.

The cask is named in full because `brew install --cask mindspace` fails with
"Cask 'mindspace' is unavailable" whenever the tap has not resolved — which
reads as though the app is missing rather than the tap.

The app is signed with a Developer ID and notarized, so macOS opens it without
complaint.

Source: https://github.com/sanjana-venkat/mindspace
