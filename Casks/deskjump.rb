cask "deskjump" do
  version "1.0.1"
  sha256 "56b3e87c8e21eca09610ea17a040aa56f1525bf97c08bfe758b2c2a12c674dcc"

  url "https://github.com/kaifacun/deskjump/releases/download/v#{version}/DeskJump-#{version}.zip"
  name "DeskJump"
  desc "Menu bar desktop switcher: click a number to jump to that desktop"
  homepage "https://github.com/kaifacun/deskjump"

  depends_on macos: :ventura

  app "DeskJump.app"

  caveats <<~EOS
    Open DeskJump once to finish setup:
      open -a DeskJump
    Then allow it in System Settings > Privacy & Security > Accessibility.
  EOS

  uninstall quit: "com.kaifacun.deskjump"

  zap trash: [
    "~/Library/Logs/DeskJump.log",
    "~/Library/Preferences/com.kaifacun.deskjump.plist",
  ]
end
