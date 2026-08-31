class Dirdiffz < Formula
  desc "Terminal directory diff tool"
  homepage "https://github.com/vakata/dirdiffz"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.5/dirdiffz-macos-aarch64.tar.gz"
      sha256 "d8186a8da165afd6aefa4daa1f75208c3dc75b323dbc4a508ed98923391d5e63"
    end

    on_intel do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.5/dirdiffz-macos-x86_64.tar.gz"
      sha256 "f59edc720599983bf129308ef75387ce333d27b7fc28b854fb4f24160a41cb92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.5/dirdiffz-linux-aarch64.tar.gz"
      sha256 "979e14450ac398bb90ae004ae7cc1af08a64409c8c562d99a0ca3e8b0f0f433c"
    end

    on_intel do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.5/dirdiffz-linux-x86_64.tar.gz"
      sha256 "9ceb6fe576160a7c33d73c57a2ab3ebf5c2493d1d9be520efe5952869b39da70"
    end
  end

  def install
    bin.install "dirdiffz"
  end

  test do
    system "#{bin}/dirdiffz", "--help"
  end
end
