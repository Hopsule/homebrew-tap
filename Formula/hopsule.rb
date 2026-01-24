class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams - Minimal CLI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.4.0"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.4.0/decision-darwin-arm64.tar.gz"
      sha256 "95de23ed32013329898b918fd9be753ca72a99fad9dbfad319154221122aedf6"
    end
  end

  def install
    bin.install "decision-darwin-arm64" => "hopsule"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
