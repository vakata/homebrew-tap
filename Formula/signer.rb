class Signer < Formula
  desc "Local HTTP service for signing data with PKCS#11 certificates"
  homepage "https://github.com/vakata/zig-signer"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.0/signer-macos-aarch64.tar.gz"
      sha256 "b604309b11375098331c394c2ac929f006b9a9e58ca9dfc65591afe232337c85"
    end

    on_intel do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.0/signer-macos-x86_64.tar.gz"
      sha256 "f290659d996ad6635b606f16962e6915c95546dbe671cecbbd2d9fbd5330f300"
    end
  end

  on_linux do
    depends_on "gtk+3"

    on_arm do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.0/signer-linux-aarch64.tar.gz"
      sha256 "dcda4dbf07e9897787114137aca28faa630905b7ab0d197a1bb682ee2413264f"
    end

    on_intel do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.0/signer-linux-x86_64.tar.gz"
      sha256 "c361257a3390dffc0178961c5b586152013975e710c98098d6b6e8176438134c"
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
