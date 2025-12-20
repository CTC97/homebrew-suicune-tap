class Suicune < Formula
  desc "2D game engine built on top of raylib."
  homepage "https://github.com/CTC97/suicune"
  url "https://github.com/CTC97/suicune/archive/refs/tags/0h.tar.gz"
  version "0h"
  sha256 "428200082d3d3263e8ab3b466557a826a5d98135228be18500c974119300e89e"
  license "GPL-3.0-or-later"

  depends_on "raylib"
  depends_on "pkg-config"

  def install
    bin.install "scripts/init.sh" => "suicune_create"
    bin.install "scripts/dist.sh" => "suicune_dist"
    bin.install "scripts/build.sh" => "suicune_bake"
  end

  test do
    puts "Success."
  end
end
