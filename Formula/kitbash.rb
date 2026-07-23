class Kitbash < Formula
  desc "Package manager and compiler for AI agent skills"
  homepage "https://singhharsh1708.github.io/kitbash/"
  url "https://registry.npmjs.org/kitbash/-/kitbash-0.8.1.tgz"
  sha256 "ad7ac1fd06d8de0654a968881294066327bd6b6973ccc293527b1ee20a959122"
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
