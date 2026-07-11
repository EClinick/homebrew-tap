cask "juice" do
  version "0.2.0"
  sha256 "d63a2eaf4f64cc42137a5015a7317acdc223e514bb8a144cead5306851e48702"

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
