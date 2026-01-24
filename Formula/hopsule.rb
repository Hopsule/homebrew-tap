class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams - Minimal CLI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.4.2"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.4.2/decision-darwin-arm64.tar.gz"
      sha256 "8c86e89805be6a66145f090db826d07640006bbdc032795fcc9b699547f0facf"
    end
  end

  def install
    bin.install "decision-darwin-arm64" => "hopsule"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
