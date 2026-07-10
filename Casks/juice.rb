cask "juice" do
  version "0.1.0-dev.2"
  sha256 "ca87f8ccebd9b073af24ab16a8f13f21110007b2d8abc693c91b888e4c5af0b3"

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
