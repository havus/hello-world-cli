class Hello < Formula
  desc "A simple 'hello world' program"
  homepage "https://github.com/<your-username>/hello-world-cli"
  url "..."
  sha256 "..."
  license "MIT"

  def install
    bin.install "dist/hello-cli"
  end

  test do
    assert_equal "Hello World!", shell_output("#{bin}/hello-cli").strip
    assert_equal "Hello John!", shell_output("#{bin}/hello-cli John").strip
  end
end
