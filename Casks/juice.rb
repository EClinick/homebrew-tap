cask "juice" do
  version "0.1.0"
  sha256 "88f0f06d07a53e67e87ddac605b235b915c21212fe66a28ca14daf5453058aad"

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
    Per-app energy history also requires Juice's separately installed privileged helper.
  EOS
end
