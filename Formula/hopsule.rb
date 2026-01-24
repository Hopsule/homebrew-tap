class Hopsule < Formula
  desc "Decision-first workflow management CLI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.1.0"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.1.0/decision-darwin-arm64.tar.gz"
      sha256 "0847f85e7b13d64efb29127356fe78fa651d86de778fd79cb3730a1e62c027c8"
    end
  end

  def install
    bin.install "decision" => "hopsule"
  end

  test do
    assert_match "hopsule version", shell_output("#{bin}/hopsule --version")
  end
end
