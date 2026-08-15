class Dirdiffz < Formula
  desc "Terminal directory diff tool"
  homepage "https://github.com/vakata/dirdiffz"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/vakata/dirdiffz/releases/download/v0.1.0/dirdiffz-macos-aarch64.tar.gz"
      sha256 "MACOS_ARM64_SHA256"
    end

    on_intel do
      url "https://github.com/vakata/dirdiffz/releases/download/v0.1.0/dirdiffz-macos-x86_64.tar.gz"
      sha256 "MACOS_X86_64_SHA256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vakata/dirdiffz/releases/download/v0.1.0/dirdiffz-linux-aarch64.tar.gz"
      sha256 "LINUX_ARM64_SHA256"
    end

    on_intel do
      url "https://github.com/vakata/dirdiffz/releases/download/v0.1.0/dirdiffz-linux-x86_64.tar.gz"
      sha256 "LINUX_X86_64_SHA256"
    end
  end

  def install
    bin.install "dirdiffz"
  end

  test do
    system "#{bin}/dirdiffz", "--help"
  end
end
