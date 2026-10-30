cask "deskjump" do
  version "1.0.0"
  sha256 "1a12f5e2092d953fefa4ef0fe9cac897145a4acb44871e932722a9c1ffba6d86"

  url "https://github.com/kaifacun/deskjump/releases/download/v#{version}/DeskJump-#{version}.zip"
  name "DeskJump"
  desc "Menu bar desktop switcher: click a number to jump to that desktop"
  homepage "https://github.com/kaifacun/deskjump"

  depends_on macos: ">= :ventura"

  app "DeskJump.app"

  postflight do
    system_command "/usr/bin/open", args: ["#{appdir}/DeskJump.app"]
  end

  uninstall quit: "com.kaifacun.deskjump"

  zap trash: [
    "~/Library/Logs/DeskJump.log",
    "~/Library/Preferences/com.kaifacun.deskjump.plist",
  ]
end
