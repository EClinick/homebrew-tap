cask "juice" do
  version "0.1.1"
  sha256 "5aedc18c423e57990be5511cbf2ac6b841c0e52488de1fe82533b23c5ca2e716"

  url "https://github.com/EClinick/juice/releases/download/v#{version}/Juice.dmg"
  name "Juice"
  desc "Menu bar battery energy monitor"
  homepage "https://github.com/EClinick/juice"

  depends_on macos: :sonoma

  app "Juice.app"

  zap trash: [
    "~/Library/Application Support/Juice",
    "~/Library/Preferences/com.eclinick.juice.plist",
  ]

  caveats <<~EOS
    Approve Juice under System Settings → General → Login Items to enable
    per-app energy history.
  EOS
end
