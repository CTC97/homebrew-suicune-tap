class Suicune < Formula
  desc "2D game engine built on top of raylib."
  homepage "https://github.com/CTC97/suicune"
  url "https://github.com/CTC97/suicune/archive/refs/tags/0b.tar.gz"
  version "0b"
  sha256 "7d93ac74642277f6186cdfcf8a349ac1311de1e48131d35e4af6d138d3f0f82b"
  license "GPL-3.0-or-later"

  depends_on "raylib"

  def install
    bin.install "scripts/init.sh" => "suicune_create"
  end

  test do
    puts "Success."
  end
end