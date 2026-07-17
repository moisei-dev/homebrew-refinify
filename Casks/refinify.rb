cask "refinify" do
  version "1.6.0"
  sha256 "dc97a337dc69258f91d4aa8d9bf6c22b29a8682a6a7142fda80a3b52d760152a"

  url "https://github.com/moisei-dev/refinify/releases/download/v#{version}/refinify-mac-#{version}-installer.dmg"
  name "Refinify"
  desc "Hammerspoon-based text-refinement tool"
  homepage "https://github.com/moisei-dev/refinify"

  app "Refinify.app"

  postflight do
    system_command "/usr/bin/xattr",
                    args: ["-dr", "com.apple.quarantine", "#{appdir}/Refinify.app"]

    system_command "#{appdir}/Refinify.app/Contents/Resources/setup-hammerspoon.sh"
  end
end
