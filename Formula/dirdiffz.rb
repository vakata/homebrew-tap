class Dirdiffz < Formula
  desc "Terminal directory diff tool"
  homepage "https://github.com/vakata/dirdiffz"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.4/dirdiffz-macos-aarch64.tar.gz"
      sha256 "83c26cfff4762a6c5daf899a03a9de2faed6fab06fb1d6fa716d7490d853056f"
    end

    on_intel do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.4/dirdiffz-macos-x86_64.tar.gz"
      sha256 "561e127cc965b49659c6c13b7487812f642576053d1ffa505f9ae47b4d1bd8ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.4/dirdiffz-linux-aarch64.tar.gz"
      sha256 "42ef8ea552cf002327b527c69709e1d198f89dcb2190cc1a371020942d287b88"
    end

    on_intel do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.4/dirdiffz-linux-x86_64.tar.gz"
      sha256 "6f7a872c0864a2287dfa04d41f88283d4fe62d9b9ff95b7546ee49bf444f48b6"
    end
  end

  def install
    bin.install "dirdiffz"
  end

  test do
    system "#{bin}/dirdiffz", "--help"
  end
end
