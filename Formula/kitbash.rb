class Kitbash < Formula
  desc "Package manager and compiler for AI agent skills"
  homepage "https://singhharsh1708.github.io/kitbash/"
  url "https://registry.npmjs.org/kitbash/-/kitbash-0.7.0.tgz"
  sha256 "82eb880545b416abe19c882a92abec249d74a6c947d1fbc2bb2f533f83c203e4"
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
