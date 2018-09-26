class Lowdown < Formula
  desc "Markdown translator with a troff(1) backend"
  homepage "https://kristaps.bsd.lv/lowdown/"
  url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.4.1.tar.gz"
  sha256 "a5fb2fa51da9c2dcbd22332e71a8b39fc838b90299e0ac8cdfffd2bc7934fcec"

  def install
    (buildpath/"configure.local").write <<~EOS
      PREFIX=#{prefix}
      INCLUDEDIR=#{include}
      BINDIR=#{bin}
      LIBDIR=#{lib}
      MANDIR=#{man}
    EOS
    system "./configure"
    system "make", "install"
  end

  test do
    (testpath/"test.md").write("# Hello, **world**")
    system bin/"lowdown"
  end
end
