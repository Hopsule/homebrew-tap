class Hopsule < Formula
  desc "Decision-first workflow management CLI with interactive TUI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.2.0"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.2.0/decision-darwin-arm64.tar.gz"
      sha256 "5973b6ba2b96c317ce196f3cb0ef22bd8a83fc5a4fd249fa93660a18f4af4e61"
    end
  end

  def install
    bin.install "decision-darwin-arm64" => "hopsule"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
