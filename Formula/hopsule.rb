class Hopsule < Formula
  desc "Decision & Memory Layer for AI teams - Universal Binary"
  homepage "https://github.com/Hopsule/cli-tool"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.6.0/decision-darwin-arm64.tar.gz"
      sha256 "58acf7c38a2d1f1979f468c2a2af134a75ef84cc89d5847291e82b0242ff67db"

      def install
        bin.install "decision-darwin-arm64" => "hopsule"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.6.0/decision-darwin-amd64.tar.gz"
      sha256 "ab11887544fcf0893b8a0f92e37a26f5e9a8fff2342c1a7879907669d71f8138"

      def install
        bin.install "decision-darwin-amd64" => "hopsule"
      end
    end
  end

  test do
    assert_match "decision version", shell_output("#{bin}/hopsule --version")
  end
end
