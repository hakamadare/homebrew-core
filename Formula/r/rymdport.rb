class Rymdport < Formula
  desc "GUI for Magic Wormhole-compatible file transfer"
  homepage "https://rymdport.github.io/"
  url "https://github.com/Jacalz/rymdport/archive/refs/tags/v3.6.0.tar.gz"
  sha256 "7e29a7ae26a22925efe777278165ff555b2dd5e0d2557f4fff1b56ae725ec8ae"
  license "GPL-3.0-or-later"

  depends_on "fyne" => :build
  depends_on "go" => :build

  def install
    system "fyne", "build", "-release"
    bin.install "rymdport"
  end

  test do
    system "true"
  end
end
