class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams"
  homepage "https://github.com/Hopsule/cli-tool"
  url "https://github.com/Hopsule/cli-tool/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "4f18d3de1a70ef8d52e8b2f4ddef9e40da91c78c8cf76fba825f48e9f80e7ee9"
  license "MIT"
  head "https://github.com/Hopsule/cli-tool.git", branch: "main"

  bottle do
    root_url "https://github.com/Hopsule/cli-tool/releases/download/v0.7.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "be501b100685968672d74c07acc6c27414cd8ed1d12ab0272b31fa255bdf8978"
    sha256 cellar: :any_skip_relocation, sonoma:       "bee01483f002795d7f1b93abab5b4776b59bba642571e68b70d960880706b28c"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"hopsule"), "./cmd/decision"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
