class Dirdiffz < Formula
  desc "Terminal directory diff tool"
  homepage "https://github.com/vakata/dirdiffz"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.2/dirdiffz-macos-aarch64.tar.gz"
      sha256 "e89b269fea21907c30f823d0392d230a430fcd1be4ee53b94dbc548007efbbf3"
    end

    on_intel do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.2/dirdiffz-macos-x86_64.tar.gz"
      sha256 "7c08a11aaba2329bd8300a8d15fffe68bca76a455fe0a523751e6a0f3066802d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.2/dirdiffz-linux-aarch64.tar.gz"
      sha256 "1172d8cde7b511aed445e7904fac4696b8264ef79603ec862fd407cbdfe6e578"
    end

    on_intel do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.2/dirdiffz-linux-x86_64.tar.gz"
      sha256 "f449492e50db458ed53d9a4f924de0db3505f6e21bec286959c996de461c30cc"
    end
  end

  def install
    bin.install "dirdiffz"
  end

  test do
    system "#{bin}/dirdiffz", "--help"
  end
end
