class Hopsule < Formula
  desc "Decision-first workflow management CLI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.1.0"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.1.0/decision-darwin-arm64.tar.gz"
      sha256 "1e3107fa509d07205b7f374bea032148799d7697fd6487093a0901b73ec7da67"
    end
  end

  def install
    bin.install "decision" => "hopsule"
  end

  test do
    assert_match "hopsule version", shell_output("#{bin}/hopsule --version")
  end
end
