cask "dbibackend" do
  version "1.6.1"
  sha256 "c139c936c5713356c3fc3a4a6cd803c21d991697c7ef03e2a36fc55d348f6b72"

  url "https://github.com/kyungw00k/dbibackend/releases/download/v1.6.1/dbibackend_1.6.1_macos_universal.dmg"
  name "DBI Backend"
  desc "Install local titles into Nintendo Switch via USB"
  homepage "https://github.com/kyungw00k/dbibackend"

  app "dbibackend.app"

  postflight_steps do
    # The binary is ad-hoc signed until notarization is set up, so the
    # quarantine flag would make Gatekeeper block first launch with
    # "cannot check for malicious software". Strip it on install/upgrade.
    # Remove this block once the app is notarized.
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/dbibackend.app"],
        must_succeed: false
  end

  zap trash: "~/.config/dbibackend"
end
