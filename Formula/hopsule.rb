class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams - Compact CLI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.4.4"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.4.4/decision-darwin-arm64.tar.gz"
      sha256 "64611f913b543e105d85f8f22249e1faadcea284405285a0b3c5f9b68aabe30d"
    end
  end

  def install
    bin.install "decision-darwin-arm64" => "hopsule"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
