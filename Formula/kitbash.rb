class Kitbash < Formula
  desc "Package manager and compiler for AI agent skills"
  homepage "https://singhharsh1708.github.io/kitbash/"
  url "https://registry.npmjs.org/kitbash/-/kitbash-0.6.0.tgz"
  sha256 "b3861a99033d2225d44524427fae9bf5594fb255b1563ddd9e2f9f430ddd4dc9"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kitbash --version")
  end
end
