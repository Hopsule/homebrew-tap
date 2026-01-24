class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams"
  homepage "https://github.com/Hopsule/cli-tool"
  url "https://github.com/Hopsule/cli-tool/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "3277e3fb774da277494f92bc49692dd7767da676c72ce22e72f44c4e7ab9743c"
  license "MIT"
  head "https://github.com/Hopsule/cli-tool.git", branch: "main"

  bottle do
    root_url "https://github.com/Hopsule/cli-tool/releases/download/v0.7.1"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "8d3f57d4d5f9b35bf761f0e06442aa956f16c383a7aeb189b361ce6201a4de37"
    sha256 cellar: :any_skip_relocation, monterey:       "df536c6498743b9b530b345304090733ea798ab7f510c95ed6cae9e3627c3966"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "8d3f57d4d5f9b35bf761f0e06442aa956f16c383a7aeb189b361ce6201a4de37"
    sha256 cellar: :any_skip_relocation, ventura:        "df536c6498743b9b530b345304090733ea798ab7f510c95ed6cae9e3627c3966"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "8d3f57d4d5f9b35bf761f0e06442aa956f16c383a7aeb189b361ce6201a4de37"
    sha256 cellar: :any_skip_relocation, sonoma:         "df536c6498743b9b530b345304090733ea798ab7f510c95ed6cae9e3627c3966"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "8d3f57d4d5f9b35bf761f0e06442aa956f16c383a7aeb189b361ce6201a4de37"
    sha256 cellar: :any_skip_relocation, sequoia:        "df536c6498743b9b530b345304090733ea798ab7f510c95ed6cae9e3627c3966"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"hopsule"), "./cmd/decision"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
