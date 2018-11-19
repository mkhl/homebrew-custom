class Upspin < Formula
  desc "upspin"
  homepage "https://upspin.io"
  url "https://upspin.io/dl/upspin.darwin_amd64.tar.gz"
  version "upspin@c137ad0-augie@2bfce48"
  sha256 "8f06602b91b4dd76f4befc775d563c9efdd43dd19b6ccd377f389e3a98d63962"

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
