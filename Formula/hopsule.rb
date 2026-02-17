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

  bottle do
    root_url "https://github.com/Hopsule/cli-tool/releases/download/v0.9.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "37214f141967de856f00ee70dc5bc99d13231a98c5aa1302378f2cccfd52e32c"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "15fab6df9f79bca2b48d899770196b84e471d395a365a1b1e231fcc6881b416e"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "b4459783ac5a879f28ffcc204c31b391a891a4c46047acf55a77b75b3aac9021"
    sha256 cellar: :any_skip_relocation, sequoia:       "da31fa414a70a863b6ab5a8a25d33ec25ee16257cc18bc9946c1e2297c506e65"
    sha256 cellar: :any_skip_relocation, sonoma:        "89deb365d38984b133c264db599328790d4797b870ad6911a8a70f2aab64011e"
    sha256 cellar: :any_skip_relocation, ventura:       "6d2d9266cf6f1d4e057f82c8b66ecea175ce99e2208ad87b08cc512028197f09"
    sha256 cellar: :any_skip_relocation, monterey:      "d967ea51f2627f3e955528fdc1c3b20e099e1e272c7bf72027ec09b19e8af09e"
  end

  def install
    bin.install "hopsule"

    # Shell completions
    generate_completions_from_executable(bin/"hopsule", "completion")
  end

  test do
    assert_match "0.9.0", shell_output("#{bin}/hopsule --version")
  end
end
