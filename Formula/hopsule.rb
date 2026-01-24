class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams - Minimal CLI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.4.2"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.4.2/decision-darwin-arm64.tar.gz"
      sha256 "15c266a206a50552febf021491915226c753b9d606e459d44f1cd0ca478799ce"
    end
  end

  def install
    bin.install "decision-darwin-arm64" => "hopsule"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
