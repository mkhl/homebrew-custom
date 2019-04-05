class Scdoc < Formula
  desc "simple man page generator"
  homepage "https://git.sr.ht/~sircmpwn/scdoc"
  url "https://git.sr.ht/~sircmpwn/scdoc/archive/1.9.4.tar.gz"
  sha256 "a10e200bcbc7d6faf9678444636886fee2fd99c754b630fc62fa9d247f1eec03"
  head "https://git.sr.ht/~sircmpwn/scdoc"

  def install
    # inreplace "Makefile", "install -Dm", "install -m"
    bin.mkpath
    man1.mkpath
    man5.mkpath
    system "make", "PREFIX=#{prefix}", "LDFLAGS=-dynamic", "install"
  end

  test do
    system "#{bin}/scdoc </dev/null"
  end
end
