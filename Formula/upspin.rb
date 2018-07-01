class Upspin < Formula
  desc "upspin"
  homepage "https://upspin.io"
  url "https://upspin.io/dl/upspin.darwin_amd64.tar.gz"
  version "upspin@1e73992-augie@b93eee0"
  sha256 "fd9c07d9ac7d4e67176e569636b069cda52009cefb434e5f1953f774a2f3dc06"

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
