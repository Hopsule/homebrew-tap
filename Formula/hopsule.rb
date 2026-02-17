# typed: false
# frozen_string_literal: true

class Hopsule < Formula
  desc "Decision-first, context-aware, portable memory system CLI"
  homepage "https://hopsule.com"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.9.0/hopsule-darwin-amd64.tar.gz"
      sha256 "e840d34d93a3b2dc307b4624a56b9e6fc35413d07eda0d038e1e336aad926775"
    end
    on_arm do
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.9.0/hopsule-darwin-arm64.tar.gz"
      sha256 "aaf213fd630a146373651c992be6e63ed1b641cf3b1e01eeabb0b17913dfebca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.9.0/hopsule-linux-amd64.tar.gz"
      sha256 "0d7b4a0703670f2c9af8ba67937c8de4d1fb1ff5bfaec8769cdcb26271517c3f"
    end
    on_arm do
      url "https://github.com/Hopsule/cli-tool/releases/download/v0.9.0/hopsule-linux-arm64.tar.gz"
      sha256 "2cc0d1e92e8a0ade9c9132b2131e642b56f9052691c05d2870907e2ace646415"
    end
  end

  def install
    bin.install "hopsule"
  end

  test do
    assert_match "0.9.0", shell_output("#{bin}/hopsule --version")
  end
end
