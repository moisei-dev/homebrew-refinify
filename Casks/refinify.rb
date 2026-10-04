cask "refinify" do
  version "1.9.1"
  sha256 "99293b9beddc62ba7091b79f10aad6fc5a5b7eb9ef3a0573308a680206e69db2"

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
