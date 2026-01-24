class Hopsule < Formula
  desc "Decision-first workflow management CLI with monochrome TUI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.3.0"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.3.0/decision-darwin-arm64.tar.gz"
      sha256 "04dc1040ee87dfafe980159d74b3f4d946743250f466a6c74143115b2377c9ce"
    end
  end

  def install
    bin.install "decision-darwin-arm64" => "hopsule"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
