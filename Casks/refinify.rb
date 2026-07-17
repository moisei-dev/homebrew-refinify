cask "refinify" do
  version "1.7.0"
  sha256 "431a94d5e0ecdbf2372b3d725efcd3f0c1d08c6e3c44a1e74e572d794a850686"

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
