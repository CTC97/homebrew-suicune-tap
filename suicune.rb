class Suicune < Formula
  desc "2D game engine built on top of raylib."
  homepage "https://github.com/CTC97/suicune"
  url "https://github.com/CTC97/suicune/archive/refs/tags/0d.tar.gz"
  version "0d"
  sha256 "d5eb3d30d466e10bf44f5138d381bda3697d80105c8faa41def40820c13dcbe4"
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
