cask "rhizome-desktop" do
  version "0.52.1"
  sha256 "56c2e4ea9c8335bd4dbe5eb0bbffd8384c654e9653114b331edc8a2f1ccd636d"

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
