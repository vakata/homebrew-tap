class Signer < Formula
  desc "Local HTTP service for signing data with PKCS#11 certificates"
  homepage "https://github.com/vakata/zig-signer"
  version ""
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vakata/zig-signer/releases/download/0.0.4/signer-macos-aarch64.tar.gz"
      sha256 ""
    end

    on_intel do
      url "https://github.com/vakata/zig-signer/releases/download/0.0.4/signer-macos-x86_64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    depends_on "gtk+3"

    on_arm do
      url "https://github.com/vakata/zig-signer/releases/download/0.0.4/signer-linux-aarch64.tar.gz"
      sha256 ""
    end

    on_intel do
      url "https://github.com/vakata/zig-signer/releases/download/0.0.4/signer-linux-x86_64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "signer", "signer-picker"
  end

  test do
    assert_predicate bin/"signer", :executable?
    assert_predicate bin/"signer-picker", :executable?
  end
end
