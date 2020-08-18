class Mypdfsigner < Formula
  desc "A tool to sign PDFs with certificates"
  homepage "https://wwww.kryptokoder.com"
  url "https://www.kryptokoder.com/mypdfsigner-3.1.1.tar.gz"
  sha256 "7b3ab9b0ff277a6440bef961c2801bbf72f3b766d279c233aee127ac7972cab4"
  license "Closed source"

  depends_on "libpng" 
  depends_on "libzip" 
  depends_on "json-c" 
  depends_on "qpdf" 
  depends_on "libharu" 
  depends_on "exiv2" 
  depends_on "openssl" 

  uses_from_macos "zlib"
  uses_from_macos "libcurl"

  def install
    bin.install "mypdfsigner"
    lib.install "libmypdfsigner.dylib"
    prefix.install Dir["legal"]
    prefix.install Dir["tests"]
    prefix.install Dir["keys"]
  end

  test do
    system "#{bin}/mypdfsigner", "-h"
  end
end
