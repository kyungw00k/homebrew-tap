cask "dbibackend" do
  version "1.6.0"
  sha256 "a70ab5a32325b322ee015ddcfed939348e94f0c7e7295afb31c5cb6f75ed252f"

  url "https://github.com/kyungw00k/dbibackend/releases/download/v1.6.0/dbibackend_1.6.0_macos_universal.dmg"
  name "DBI Backend"
  desc "Install local titles into Nintendo Switch via USB"
  homepage "https://github.com/kyungw00k/dbibackend"

  app "dbibackend.app"

  zap trash: "~/.config/dbibackend"
end
