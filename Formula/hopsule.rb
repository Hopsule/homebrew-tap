class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams - Universal Binary"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.5.0"
  license "MIT"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.5.0/decision-darwin-arm64.tar.gz"
      sha256 "104307bf113a1b228338810aa9892073bc2cda65724f39f5a18911e24ff4ddaa"
    elsif Hardware::CPU.intel?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.5.0/decision-darwin-amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "decision-darwin-arm64" => "hopsule"
    elsif Hardware::CPU.intel?
      bin.install "decision-darwin-amd64" => "hopsule"
    end
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
