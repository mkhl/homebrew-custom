class Upspin < Formula
  desc "upspin"
  homepage "https://upspin.io"
  url "https://upspin.io/dl/upspin.darwin_amd64.tar.gz"
  version "upspin@aba3aa6-augie@5859abb"
  sha256 "538304e6548eac1d27d1ca614182de827d3991c2059ad81ef490f84c74bf5d97"

  def install
    bin.install %w[
      cacheserver
      upspin
      upspin-audit
      upspin-ui
      upspinfs
    ]
  end
end
