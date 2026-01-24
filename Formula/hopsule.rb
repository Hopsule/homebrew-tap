class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams"
  homepage "https://github.com/Hopsule/cli-tool"
  url "https://github.com/Hopsule/cli-tool/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "bd7bfceb72bf4929944be74c7e2972997972744777e3aa2497fb29949df29c23"
  license "MIT"
  head "https://github.com/Hopsule/cli-tool.git", branch: "main"

  bottle do
    root_url "https://github.com/Hopsule/cli-tool/releases/download/v0.7.2"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "c933a393d1487336a47b15887d9f74e32b12bfe8c77c73bc55ee2fd8a74fbd34"
    sha256 cellar: :any_skip_relocation, monterey:       "ddc271b76ad29ab20b65190cde1ec120b1ba0691e80fef6267c27bcaea65711a"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "c933a393d1487336a47b15887d9f74e32b12bfe8c77c73bc55ee2fd8a74fbd34"
    sha256 cellar: :any_skip_relocation, ventura:        "ddc271b76ad29ab20b65190cde1ec120b1ba0691e80fef6267c27bcaea65711a"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "c933a393d1487336a47b15887d9f74e32b12bfe8c77c73bc55ee2fd8a74fbd34"
    sha256 cellar: :any_skip_relocation, sonoma:         "a3bba2a907310e2b381025dcea63a4efbb5d095b3f3f96b9a7de50052dfaea13"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "c933a393d1487336a47b15887d9f74e32b12bfe8c77c73bc55ee2fd8a74fbd34"
    sha256 cellar: :any_skip_relocation, sequoia:        "9cc61f953f486b3af69a9f25119b97832fdeb44a1d9b63d8136812bdb41b6dfd"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"hopsule"), "./cmd/decision"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
