class Xe < Formula
  desc "simple xargs and apply replacement"
  homepage "https://github.com/chneukirchen/xe"
  head "https://github.com/chneukirchen/xe.git"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end
end
