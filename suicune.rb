class Suicune < Formula
  desc "2D game engine built on top of raylib."
  homepage "https://github.com/CTC97/suicune"
  url "https://github.com/CTC97/suicune/archive/refs/tags/0c.tar.gz"
  version "0c"
  sha256 "fb9c65262d9834ab00b3ac27a37889d56d6d42915726b6b6dabe717e46894ac0"
  license "GPL-3.0-or-later"

  depends_on "raylib"
  depends_on "pkg-config"

  def install
    bin.install "scripts/init.sh" => "suicune_create"
  end

  test do
    puts "Success."
  end
end
