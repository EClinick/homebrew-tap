cask "juice" do
  version "0.1.0-dev.1"
  sha256 "ecb325edff297842d3b4067a8638d5aff52b84b7b59a543576d92fdeb7ea1567"

  url "https://github.com/EClinick/juice/releases/download/v#{version}/Juice.dmg"
  name "Juice"
  desc "Menu bar battery energy monitor"
  homepage "https://github.com/EClinick/juice"

  app "Juice.app"

  zap trash: [
    "~/Library/Application Support/Juice",
    "~/Library/Preferences/com.eclinick.juice.plist",
  ]

  caveats <<~EOS
    Juice #{version} is an ad-hoc-signed development build and is not notarized.
    Per-app energy history also requires Juice's separately installed privileged helper.
  EOS
end
