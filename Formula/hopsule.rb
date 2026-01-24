class Hopsule < Formula
  desc "Decision-first workflow management CLI with interactive TUI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.2.1"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.2.1/decision-darwin-arm64.tar.gz"
      sha256 "eb4fd80d01de413325d30db4494e0ce9e674ad93891c9c55585ef730007edc90"
    end
  end

  def install
    bin.install "decision-darwin-arm64" => "hopsule"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
