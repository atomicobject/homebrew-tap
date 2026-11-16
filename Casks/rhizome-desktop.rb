cask "rhizome-desktop" do
  version "0.53.0"
  sha256 "d413e17dd968658c3bf89f7b819357049356b6793df2d370753d947f4701ade1"

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
