class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams"
  homepage "https://github.com/Hopsule/cli-tool"
  url "https://github.com/Hopsule/cli-tool/archive/refs/tags/v0.7.4.tar.gz"
  sha256 "3277e3fb774da277494f92bc49692dd7767da676c72ce22e72f44c4e7ab9743c"
  license "MIT"
  head "https://github.com/Hopsule/cli-tool.git", branch: "main"

  bottle do
    root_url "https://github.com/Hopsule/cli-tool/releases/download/v0.7.4"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "2709bf7d6d5a51423758b753dd33d57c15425c6c93945360ca1de5d026b2f289"
    sha256 cellar: :any_skip_relocation, monterey:       "a55c0f65fd7f9bdfe80349c7faf3e790cb40b1dc1856366928f9588b1be883f0"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "2709bf7d6d5a51423758b753dd33d57c15425c6c93945360ca1de5d026b2f289"
    sha256 cellar: :any_skip_relocation, ventura:        "a55c0f65fd7f9bdfe80349c7faf3e790cb40b1dc1856366928f9588b1be883f0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "2709bf7d6d5a51423758b753dd33d57c15425c6c93945360ca1de5d026b2f289"
    sha256 cellar: :any_skip_relocation, sonoma:         "a55c0f65fd7f9bdfe80349c7faf3e790cb40b1dc1856366928f9588b1be883f0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "2709bf7d6d5a51423758b753dd33d57c15425c6c93945360ca1de5d026b2f289"
    sha256 cellar: :any_skip_relocation, sequoia:        "a55c0f65fd7f9bdfe80349c7faf3e790cb40b1dc1856366928f9588b1be883f0"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"hopsule"), "./cmd/decision"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
