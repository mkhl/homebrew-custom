class Inplace < Formula
  desc "stream editor adaptor for in-place editing"
  homepage "https://github.com/nicowilliams/inplace"
  head "https://github.com/nicowilliams/inplace.git"

  def install
    system "make", "inplace"
    bin.install "inplace"
  end
end
