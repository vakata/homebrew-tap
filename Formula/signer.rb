class Signer < Formula
  desc "Local HTTP service for signing data with PKCS#11 certificates"
  homepage "https://github.com/vakata/zig-signer"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.2/signer-macos-aarch64.tar.gz"
      sha256 "fddd146472168f6dccca60bf28e119457c6195452234cda5e653256f25d211c8"
    end

    on_intel do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.2/signer-macos-x86_64.tar.gz"
      sha256 "44e7d4c3df474c2c1b45e88a8a9ff390e55089a5101240c11731a53901fd2c09"
    end
  end

  on_linux do
    depends_on "gtk+3"

    on_arm do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.2/signer-linux-aarch64.tar.gz"
      sha256 "9070630bc5dccc098a4bf5fd196a5d775daca2d08c96c72c365c63209814aff2"
    end

    on_intel do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.2/signer-linux-x86_64.tar.gz"
      sha256 "18dc0d79d70f48869c7585e5af51d8b45eaf71699804236cb8191535efa1b51e"
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
