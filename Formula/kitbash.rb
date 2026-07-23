class Kitbash < Formula
  desc "Package manager and compiler for AI agent skills"
  homepage "https://singhharsh1708.github.io/kitbash/"
  url "https://registry.npmjs.org/kitbash/-/kitbash-0.8.0.tgz"
  sha256 "d8b6f6264bd80ed6a8890c1ca4b3210804c379a269271f023ca8366989eac3f6"
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
