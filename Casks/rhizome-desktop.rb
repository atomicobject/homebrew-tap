cask "rhizome-desktop" do
  version "0.51.0"
  sha256 "be5162c88d2da80ad8261e77f92d264cf52056ae8db3bd2807d4152fa4e1a56a"

  url "https://github.com/atomicobject/rhizome/releases/download/v#{version}/Rhizome-macos-arm64.dmg"
  name "Rhizome"
  desc "Open repositories in Rhizome"
  homepage "https://github.com/atomicobject/rhizome"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Rhizome.app"
  binary "#{appdir}/Rhizome.app/Contents/MacOS/rzm"
end
