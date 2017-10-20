class Pds < Formula
  desc "parallel data substitution"
  homepage "https://github.com/chneukirchen/pds"
  head "https://github.com/chneukirchen/pds.git"

  def install
    bin.install "pds"
  end

  test do
    output = pipe_output("#{bin/"pds"} -t foo bar", "foo bar baz\n")
    assert_equal "bar foo baz\n", output
  end
end
