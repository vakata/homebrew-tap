class Dirdiffz < Formula
  desc "Terminal directory diff tool"
  homepage "https://github.com/vakata/dirdiffz"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.3/dirdiffz-macos-aarch64.tar.gz"
      sha256 "263c9ccc1569e2b28a23d74193ef2faee53baf2fe9fb1f90ccef2649ff1ad7de"
    end

    on_intel do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.3/dirdiffz-macos-x86_64.tar.gz"
      sha256 "ff5bc974f4adee2b0e5bffde9403276abb41720bd09064e365831a1dfe75df66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.3/dirdiffz-linux-aarch64.tar.gz"
      sha256 "42274dbad7950dfd76c65874fe27192a890db69eb9905ac7bd1be4dfba3c6013"
    end

    on_intel do
      url "https://github.com/vakata/dirdiffz/releases/download/0.1.3/dirdiffz-linux-x86_64.tar.gz"
      sha256 "686de48d45cfd8e9b2ae58cf8ea8132681ad66d2a1901a196f41a4125306da97"
    end
  end

  def install
    bin.install "dirdiffz"
  end

  test do
    system "#{bin}/dirdiffz", "--help"
  end
end
