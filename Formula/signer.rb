class Signer < Formula
  desc "Local HTTP service for signing data with PKCS#11 certificates"
  homepage "https://github.com/vakata/zig-signer"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.3/signer-macos-aarch64.tar.gz"
      sha256 "48cbc9874f21ebc9db3aa937401807e5e272a5fe602ad4a0b44a1fecfaf3678c"
    end

    on_intel do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.3/signer-macos-x86_64.tar.gz"
      sha256 "9c21cf5d61a067fd4de4dfb61ef7676c6f70376a56ffe754b930896fc1678d1e"
    end
  end

  on_linux do
    depends_on "gtk+3"

    on_arm do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.3/signer-linux-aarch64.tar.gz"
      sha256 "3872a1c72c78253ff27bfe4020c7f9743db75c89cb386517180de961ef5fe105"
    end

    on_intel do
      url "https://github.com/vakata/zig-signer/releases/download/0.1.3/signer-linux-x86_64.tar.gz"
      sha256 "0e0cb429e4d3c5f1c6aa046357e8d99a6d465a6a4c29538d9e497b7e189fb101"
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
