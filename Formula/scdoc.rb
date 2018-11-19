class Scdoc < Formula
  desc "simple man page generator"
  homepage "https://git.sr.ht/~sircmpwn/scdoc"
  url "https://git.sr.ht/~sircmpwn/scdoc/archive/1.6.0.tar.gz"
  sha256 "a396bc070c8734d7cafe3a3481c8cffacd83b3effdeb28de43e2cdac889643b1"
  head "https://git.sr.ht/~sircmpwn/scdoc"

  def install
    inreplace "Makefile", "install -Dm", "install -m"
    bin.mkpath
    man1.mkpath
    man5.mkpath
    system "make", "PREFIX=#{prefix}", "LDFLAGS=-dynamic", "install"
  end

  test do
    system "#{bin}/scdoc </dev/null"
  end
end
