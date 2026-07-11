cask "juice" do
  version "0.1.7"
  sha256 "fc4b0155f04cb256c476bcf8efc6c8b8c814814c61588654d2abd96d6cd4faf9"

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
