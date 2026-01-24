class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams - Minimal CLI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.4.2"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.4.2/decision-darwin-arm64.tar.gz"
      sha256 "75211fba3e0272abfb9edf89bf8f943493b1b3fc85b55c3b9a0a667a249f188d"
    end
  end

  def install
    bin.install "decision-darwin-arm64" => "hopsule"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
