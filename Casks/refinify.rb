cask "refinify" do
  version "1.9.0"
  sha256 "3ca662b772e633e2a4e313b1b8b7d584e8fdc16ce8d70a9dbce4fb35948f106b"

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
