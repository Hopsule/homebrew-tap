class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.6.2/decision-darwin-arm64.tar.gz"
      sha256 "5cdf06dda981a54cb35a3111b1fe5ba248ac5c3ad194f6ff7db0d39a640a7eb8"
    end

    on_intel do
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.6.2/decision-darwin-amd64.tar.gz"
      sha256 "0d260a8bfc75ad4fef22f9f071956fcaea5cbc80df59ce3246537a1a43a5d4b2"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "decision-darwin-arm64" => "hopsule"
    else
      bin.install "decision-darwin-amd64" => "hopsule"
    end
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
