class Dicmd < Formula
  desc "Command line for macOS Dictionary.app"
  homepage "https://github.com/cxa/dicmd"
  url "https://github.com/cxa/dicmd/archive/0.0.1.tar.gz"
  sha256 "1b241bd912446bd0cd2f19ed142f22db4525c7a5120ac4b02845bfa6fd432921"
  head "https://github.com/cxa/dicmd.git", :branch => "main"
  license "MIT"

  def install
    if build.head?
      system "make", "install"
    end

    bin.install "#{buildpath}/bin/dicmd"
  end

  test do
    system "#{bin}/dicmd", "-l"
  end
end
