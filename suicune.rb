class Suicune < Formula
  desc "2D game engine built on top of raylib."
  homepage "https://github.com/CTC97/suicune"
  url "https://github.com/CTC97/suicune/archive/refs/tags/0g.tar.gz"
  version "0g"
  sha256 "93d4e170fcc0ae1a5e061b5ae0823b54584f7edb0c5aff9331863de37e0c4a0b"
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
