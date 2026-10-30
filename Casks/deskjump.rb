cask "deskjump" do
  version "1.0.3"
  sha256 "ab0613d1a275838baddb48b3256bf9b4e167ffcbbceba5f10c031633c9276f2a"

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
