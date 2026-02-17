class Hopsule < Formula
  desc "Decision-first, context-aware, portable memory system CLI"
  homepage "https://hopsule.com"
  license "MIT"
  head "https://github.com/Hopsule/cli-tool.git", branch: "main"

  # Stable release — GoReleaser will auto-update this block on each tagged release.
  # Until then, use `brew install --HEAD hopsule/tap/hopsule` for the latest.
  url "https://github.com/Hopsule/cli-tool.git",
      tag:      "v0.7.5",
      revision: "c3b2f8e"
  version "0.7.5"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=#{Utils.git_short_head}
      -X main.date=#{time.iso8601}
    ]

    # Build from root main.go (not cmd/decision which was removed in v0.9.0+)
    if File.exist?("cmd/decision/main.go")
      system "go", "build", *std_go_args(ldflags:, output: bin/"hopsule"), "./cmd/decision"
    else
      system "go", "build", *std_go_args(ldflags:, output: bin/"hopsule"), "."
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hopsule --version")
  end
end
