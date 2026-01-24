class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams"
  homepage "https://github.com/Hopsule/cli-tool"
  url "https://github.com/Hopsule/cli-tool/archive/refs/tags/v0.7.3.tar.gz"
  sha256 "bd24bf4c9e7e72797e9742ac97e977c7c77eb27274bf729ed29cc247496ef9fa"
  license "MIT"
  head "https://github.com/Hopsule/cli-tool.git", branch: "main"

  bottle do
    root_url "https://github.com/Hopsule/cli-tool/releases/download/v0.7.3"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "ae560c0f544ac6ee488c1c9473780432005dcb044942e9f79c748c96382894d5"
    sha256 cellar: :any_skip_relocation, monterey:       "b5dedb94ec6b9be58cd44f2bbbee0b1d1c080e09f092c557c95b8f1b8b56e7c2"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "ae560c0f544ac6ee488c1c9473780432005dcb044942e9f79c748c96382894d5"
    sha256 cellar: :any_skip_relocation, ventura:        "a3e868c93357196803e84c517cf6bf25625b89479b85f2b0ed2d2202b2af8b0e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "ae560c0f544ac6ee488c1c9473780432005dcb044942e9f79c748c96382894d5"
    sha256 cellar: :any_skip_relocation, sonoma:         "2595986831dde17dd01ef309be5d3925628e9249965e0796c7848de1fd39101f"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "ae560c0f544ac6ee488c1c9473780432005dcb044942e9f79c748c96382894d5"
    sha256 cellar: :any_skip_relocation, sequoia:        "a3e868c93357196803e84c517cf6bf25625b89479b85f2b0ed2d2202b2af8b0e"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"hopsule"), "./cmd/decision"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
