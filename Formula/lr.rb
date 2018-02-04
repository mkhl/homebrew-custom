class Lr < Formula
  desc "list files, recursively"
  homepage "https://github.com/chneukirchen/lr"
  head "https://github.com/chneukirchen/lr.git"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end
end
