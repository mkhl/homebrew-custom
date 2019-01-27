class Scdoc < Formula
  desc "simple man page generator"
  homepage "https://git.sr.ht/~sircmpwn/scdoc"
  url "https://git.sr.ht/~sircmpwn/scdoc/archive/1.8.0.tar.gz"
  sha256 "24a5800062ffc8b21b91020a3289b20824cad4b42327957bed4cd815001bc984"
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
