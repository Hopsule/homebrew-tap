class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams - Minimal CLI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.4.2"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.4.2/decision-darwin-arm64.tar.gz"
      sha256 "4d2305897d0db2ca04bf6a57e2d7e8a2edbfbc2a889f719ea75b776f3ade7edd"
    end
  end

  def install
    bin.install "decision-darwin-arm64" => "hopsule"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
