class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams - Homebrew Core Ready"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.5.0"
  license "MIT"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.5.0/decision-darwin-arm64.tar.gz"
      sha256 "d829041131f795c57a43de41f46c959f6296a26ae743aab2d45424e6cbf0674c"
    end
  end

  def install
    bin.install "decision-darwin-arm64" => "hopsule"
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
