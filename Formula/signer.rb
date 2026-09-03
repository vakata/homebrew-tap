class Signer < Formula
  desc "Local HTTP service for signing data with PKCS#11 certificates"
  homepage "https://github.com/vakata/zig-signer"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.1/signer-macos-aarch64.tar.gz"
      sha256 "49e96cc0c23af9a89b7e88f363f6b00996991e7f73ab14c963bc4b5a03ae21cb"
    end

    on_intel do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.1/signer-macos-x86_64.tar.gz"
      sha256 "7d56bf25ea1d98cf474bf63a8c5d0479bd5b7dee1749e731866d57bc2c0d3f00"
    end
  end

  on_linux do
    depends_on "gtk+3"

    on_arm do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.1/signer-linux-aarch64.tar.gz"
      sha256 "2a8d1abcd8fd9afacebe7383e6f50f21528faddedeb58786abedfd28ce39b0a8"
    end

    on_intel do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.1/signer-linux-x86_64.tar.gz"
      sha256 "0b0ec6b6551e5eb4a682b94d242e9fe593ff7e17cd87ee11f2505d24ea78912e"
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
