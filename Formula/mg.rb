class Mg < Formula
  desc "Small Emacs-like editor"
  homepage "https://devio.us/~bcallah/mg/"
  url "https://github.com/ibara/mg/releases/download/mg-20180927/mg-20180927.tar.gz"
  sha256 "99b2fd2cf9d6474153d6c5769c818dd5514c147b8a8ad660a5e114bc1ebd504d"

  depends_on :macos => :yosemite # older versions don't support fstatat(2)

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--mandir=#{man}"
    system "make"
    system "make", "install"
  end

  test do
    (testpath/"command.sh").write <<~EOS
      #!/usr/bin/expect -f
      set timeout -1
      spawn #{bin}/mg
      match_max 100000
      send -- "\u0018\u0003"
      expect eof
    EOS
    chmod 0755, testpath/"command.sh"

    system testpath/"command.sh"
  end
end
