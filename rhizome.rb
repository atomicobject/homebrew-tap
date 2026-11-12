# frozen_string_literal: true
class Rhizome < Formula
  desc "Repository knowledge graph for agents"
  homepage "https://github.com/atomicobject/rhizome"
  version "0.52.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atomicobject/rhizome/releases/download/v0.52.1/rhizome-darwin-arm64.tar.gz"
      sha256 "bf361cf320cef366e7bc77a465b44a62e710fb59ea3d20520105717f72b87a2f"
    else
      url "https://github.com/atomicobject/rhizome/releases/download/v0.52.1/rhizome-darwin-amd64.tar.gz"
      sha256 "1e9bbf1f24bbff08f21042311b3d6babdad14bb24e05376cac1ac8aba98f7321"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/atomicobject/rhizome/releases/download/v0.52.1/rhizome-linux-arm64.tar.gz"
      sha256 "2da2a8f2c82f345e187ce7f5c5b620fc97478afc7287a444883f0ea68b6d822b"
    else
      url "https://github.com/atomicobject/rhizome/releases/download/v0.52.1/rhizome-linux-amd64.tar.gz"
      sha256 "a9870e09181ef3090c4b4d89b15b104e23ef469137cc6de02adce5303de2aa2d"
    end
  end

  def install
    bin.install "rzm"
  end

  test do
    system "#{bin}/rzm", "--version"
  end
end
