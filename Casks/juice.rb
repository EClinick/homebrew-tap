cask "juice" do
  version "0.2.1"
  sha256 "24da5612a95a2ed4f62464c718a74e8452f5d06a7cc1a385fb64b4d7bf19e056"

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
