cask "yuque" do
  version "0.8.11"
  sha256 "5f2a455e38d315871499dff6faeb66db4a33e663b4ce2e8879a13b4055af2562"

  url "https://app.nlark.com/yuque-desktop/Yuque-#{version}.dmg",
      verified: "app.nlark.com/yuque-desktop/"
  name "Yuque"
  name "语雀"
  desc "Cloud knowledge base"
  homepage "https://www.yuque.com/"

  livecheck do
    url "https://www.yuque.com/yuque/yuque-desktop/changelog"
    regex(/下载地址(\d+(?:\.\d+)*)/i)
  end

  app "语雀.app"

  zap trash: [
    "~/Library/Application Support/yuque-desktop",
    "~/Library/Saved Application State/com.yuque.app.savedState",
    "~/Library/Preferences/com.yuque.app.plist",
  ]
end
