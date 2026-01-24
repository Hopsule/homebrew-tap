class Hopsule < Formula
  desc "Decision-first workflow management CLI"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.1.0"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.1.0/decision-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA"
    else
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.1.0/decision-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_AMD64_SHA"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.1.0/decision-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA"
    else
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.1.0/decision-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64_SHA"
    end
  end

  def install
    bin.install "decision" => "hopsule"
  end

  test do
    assert_match "hopsule version", shell_output("#{bin}/hopsule --version")
  end
end
