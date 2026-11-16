# frozen_string_literal: true
class Rhizome < Formula
  desc "Repository knowledge graph for agents"
  homepage "https://github.com/atomicobject/rhizome"
  version "0.53.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atomicobject/rhizome/releases/download/v0.53.0/rhizome-darwin-arm64.tar.gz"
      sha256 "f388a7918a7dd6ee9e411c58bf603da19766f42f90569932f69bc746df81c6de"
    else
      url "https://github.com/atomicobject/rhizome/releases/download/v0.53.0/rhizome-darwin-amd64.tar.gz"
      sha256 "ed657329ac6ef56950eca881b03961fc299251989cbcfa939fec9d9684b5d0c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/atomicobject/rhizome/releases/download/v0.53.0/rhizome-linux-arm64.tar.gz"
      sha256 "97f47db433c90d2763c467b9f56affe9afcd846603dd0c46147b378a1a614db9"
    else
      url "https://github.com/atomicobject/rhizome/releases/download/v0.53.0/rhizome-linux-amd64.tar.gz"
      sha256 "099e64e92c37f5a78a5136e7774f7078022af3ebf1e6d93db528bc49e7fcbe08"
    end
  end

  def install
    bin.install "rzm"
  end

  test do
    system "#{bin}/rzm", "--version"
  end
end
