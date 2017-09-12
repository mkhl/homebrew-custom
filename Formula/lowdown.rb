class Lowdown < Formula
  desc "Markdown translator with a troff(1) backend"
  homepage "https://kristaps.bsd.lv/lowdown/"
  url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.2.4.tar.gz"
  sha256 "4cc6ea072244fbad7b44faa3e028f336f3f6e9422fa9acc263d2c2c250e43a88"

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
