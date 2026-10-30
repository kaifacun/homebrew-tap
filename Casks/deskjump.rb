cask "deskjump" do
  version "1.0.2"
  sha256 "2fbad0320a94aa7e2c53d84ef45c16c176a01b4f76c6436af6baabb395b68491"

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
