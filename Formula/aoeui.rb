class Aoeui < Formula
  desc "Lightweight text editor optimized for Dvorak and QWERTY keyboards"
  homepage "https://github.com/pklausler/aoeui"
  url "https://github.com/pklausler/aoeui/raw/03ff419acb2d6669ea48b5640398c44528f662eb/aoeui-1.7.tgz"
  sha256 "f4c067ad2c3b95ad130411195dd53ea49300e8e3496ecf0deceff20350c7670d"
  head "https://github.com/pklausler/aoeui.git"

  def install
    system "make", "INST_DIR=#{prefix}", "install"
  end
end
