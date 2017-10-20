class Lowdown < Formula
  desc "Markdown translator with a troff(1) backend"
  homepage "https://kristaps.bsd.lv/lowdown/"
  url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.3.0.tar.gz"
  sha256 "5495a299227e49241ba2415065c0a3f32ed3334834db7aa611d65c5d2cbd57e7"

  def install
    (buildpath/"configure.local").write <<-CFG.undent
      PREFIX=#{prefix}
      INCLUDEDIR=#{include}
      BINDIR=#{bin}
      LIBDIR=#{lib}
      MANDIR=#{man}
    CFG
    system "./configure"
    system "make", "install"
  end

  test do
    (testpath/"test.md").write("# Hello, **world**")
    system bin/"lowdown"
  end
end
