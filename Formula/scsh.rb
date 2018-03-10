class Scsh < Formula
  desc "Scheme shell"
  homepage "https://github.com/scheme/scsh"
  head "https://github.com/scheme/scsh.git"

  depends_on "autoconf" => :build
  depends_on "scheme48"

  def install
    ENV.deparallelize
    system "autoreconf"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--infodir=#{info}",
                          "--mandir=#{man}"
    system "make", "install"
    rm_rf include
  end
end