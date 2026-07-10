cask "juice" do
  version "0.1.4"
  sha256 "46bc1165fbe8a2f7bbf3d5fd5f112dc37261c86ef60c955db6f5ed317c28d618"

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
