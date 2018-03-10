 class Nq < Formula
  desc "Unix command line queue utility"
  homepage "https://github.com/chneukirchen/nq"
  url "https://github.com/chneukirchen/nq/archive/v0.3.1.tar.gz"
  sha256 "8897a747843fe246a6f8a43e181ae79ef286122a596214480781a02ef4ea304b"
  head "https://github.com/chneukirchen/nq.git"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end
end
