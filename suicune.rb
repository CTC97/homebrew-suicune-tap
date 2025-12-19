class Suicune < Formula
  desc "2D game engine built on top of raylib."
  homepage "https://github.com/CTC97/suicune"
  url "https://github.com/CTC97/suicune/archive/refs/tags/0e.tar.gz"
  version "0e"
  sha256 "e7d9e1c6c9c5891a60db8cdec4acd7300c4c0d460d516eddbdb0e3341240b34d"
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
