# frozen_string_literal: true
class Rhizome < Formula
  desc "Repository knowledge graph for agents"
  homepage "https://github.com/atomicobject/rhizome"
  version "0.51.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atomicobject/rhizome/releases/download/v0.51.0/rhizome-darwin-arm64.tar.gz"
      sha256 "6e8a22ccd6c3c83fc0924d39c451effb42b52f64a3f0c0bb72dec9f7cfddd7f8"
    else
      url "https://github.com/atomicobject/rhizome/releases/download/v0.51.0/rhizome-darwin-amd64.tar.gz"
      sha256 "78e9a30be7097dc143bb05b327a4fa508c5cea44f0d727afead7cbba7ca47dec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/atomicobject/rhizome/releases/download/v0.51.0/rhizome-linux-arm64.tar.gz"
      sha256 "4741072bfc04e4132117025f5fab61ffdd4e7f6912a6a7830292e5cc8441aa15"
    else
      url "https://github.com/atomicobject/rhizome/releases/download/v0.51.0/rhizome-linux-amd64.tar.gz"
      sha256 "4105c83649477662e19b70cd75ace815b8e15ce8f140f2142cdc362069b5f71f"
    end
  end

  def install
    bin.install "rzm"
  end

  test do
    system "#{bin}/rzm", "--version"
  end
end
