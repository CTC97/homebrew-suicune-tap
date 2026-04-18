class Suicune < Formula
  desc "2D game engine built on top of raylib."
  homepage "https://github.com/CTC97/suicune"
  url "https://github.com/CTC97/suicune/archive/refs/tags/0i.tar.gz"
  version "0i"
  sha256 "dcb850a2dc8ed0e594b9be30b0cbf8c14390cad78ff3ae3ca94886e054ad28ec"
  license "GPL-3.0-or-later"

  depends_on "raylib"
  depends_on "pkg-config"

  def install
    bin.install "scripts/init.sh" => "suicune_create"
    bin.install "scripts/dist.sh" => "suicune_dist"
    bin.install "scripts/build.sh" => "suicune_bake"
    pkgshare.install "scripts/web-shell.html"
  end

  test do
    # no args → usage
    assert_match "--mac", shell_output("#{bin}/suicune_dist 2>&1", 1)

    # unknown flag → usage
    assert_match "--mac", shell_output("#{bin}/suicune_dist --bad 2>&1", 1)

    # --web with no em++ in test env → clear error
    assert_match "em++", shell_output("#{bin}/suicune_dist --web 2>&1", 1)

    # --mac with a minimal stub project → produces a valid .app bundle
    (testpath/"Makefile").write("all:\n\tmkdir -p build && touch build/executable && chmod +x build/executable\n")
    (testpath/"res").mkpath
    system "#{bin}/suicune_dist", "--mac", "mygame"
    assert_predicate testpath/"dist/mygame.app/Contents/MacOS/mygame", :exist?
    assert_predicate testpath/"dist/mygame.app/Contents/Info.plist", :exist?
    assert_predicate testpath/"dist/mygame.app/Contents/Resources/res", :exist?

    # web-shell.html available for --web builds
    assert_predicate pkgshare/"web-shell.html", :exist?
  end
end
