class Suicune < Formula
  desc "2D game engine built on top of raylib."
  homepage "https://github.com/CTC97/suicune"
  url "https://github.com/CTC97/suicune/archive/refs/tags/0f.tar.gz"
  version "0f"
  sha256 "55e11e99aab8958a4f72e3fcb4ccedd4862c5a5bdab9c153c2930605c41e8091"
  license "GPL-3.0-or-later"

  depends_on "raylib"
  depends_on "pkg-config"

  def install
    bin.install "scripts/init.sh" => "suicune_create"
    bin.install "scripts/dist.sh" => "suicune_dist"
  end

  test do
    puts "Success."
  end
end
