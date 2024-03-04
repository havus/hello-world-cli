class Hello < Formula
  desc "A simple 'hello world' program"
  homepage "https://github.com/<your-username>/hello-world-cli"
  url "https://github.com/havus/hello-world-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3467fa702887b0faa3c309e28a8587767defca5b243efd45add760d43f7f157b"
  license "MIT"

  def install
    bin.install "dist/hello-cli"
  end

  test do
    assert_equal "Hello World!", shell_output("#{bin}/hello-cli").strip
    assert_equal "Hello John!", shell_output("#{bin}/hello-cli John").strip
  end
end
