class Mg < Formula
  desc "Small Emacs-like editor"
  homepage "http://devio.us/~bcallah/mg/"
  url "http://devio.us/~bcallah/mg/mg-20151130.tar.gz"
  sha256 "de589aa5b2e5067443a7c3ecf9cea4747056b2ebd6c245e78e029f1a89b62ee1"

  conflicts_with "mg3a", :because => "both install `mg` binaries"

  def install
    system "make"
    bin.install "mg"
    doc.install "tutorial"
    man1.install "mg.1"
  end

  test do
    (testpath/"command.sh").write <<-EOS.undent
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
