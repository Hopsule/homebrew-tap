class Hopsule < Formula
  desc "Decision-first workflow management CLI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.1.1"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.1.1/decision-darwin-arm64.tar.gz"
      sha256 "20555947c84b8f9fb38492c60f12fa7cba88a9d48f07dce91b714e1b0a61fac7"
    end
  end

  def install
    bin.install "decision-darwin-arm64" => "hopsule"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
