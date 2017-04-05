class With < Formula
  desc "Command prefixing for continuous workflows"
  homepage "https://github.com/mchav/with"
  head "https://github.com/mchav/with.git"

  def install
    bin.install "with"
    bash_completion.install "with.bash-completion" => "with"
  end

  test do
    output = pipe_output("#{bin/"with"} ruby -e", "'puts 1+1'\n:q")
    assert_equal "2", output
  end
end
