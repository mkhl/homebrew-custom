class Lowdown < Formula
  desc "Markdown translator with a troff(1) backend"
  homepage "https://kristaps.bsd.lv/lowdown/"
  url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.3.1.tar.gz"
  sha256 "9e3796c7f819a3d28a8e304eac60da62e98fa996cae4131da971d8deaea44766"

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
