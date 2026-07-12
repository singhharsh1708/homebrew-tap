class Kitbash < Formula
  desc "Package manager and compiler for AI agent skills"
  homepage "https://singhharsh1708.github.io/kitbash/"
  url "https://registry.npmjs.org/kitbash/-/kitbash-0.5.0.tgz"
  sha256 "0f1569a93146eff628babf2a8a9a2bb4469990267694a568e1efbdd175eda2ee"
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
