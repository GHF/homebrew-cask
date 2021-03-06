cask "pd-l2ork" do
  version "2.15.2-rev.2d04705d"
  sha256 "12ad771161cbab189ab27a2f09be2a416bc69c84a727dcb3a5e2678b6adc051b"

  url "https://github.com/agraef/purr-data/releases/download/#{version}/osx_10.11-x86_64-dmg.zip",
      verified: "github.com/agraef/purr-data/"
  appcast "https://github.com/agraef/purr-data/releases.atom"
  name "Pd-l2ork"
  name "Purr Data"
  desc "Purr Data - Jonathan Wilkes' cross-platform Pd-l2ork version"
  homepage "https://agraef.github.io/purr-data/"

  app "Pd-l2ork.app"
  binary "#{appdir}/Pd-l2ork.app/Contents/Resources/app.nw/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Pd-l2ork.app", "0777"
  end
end
