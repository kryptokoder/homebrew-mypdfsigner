class Mypdfsigner < Formula
  desc "A tool to sign PDFs with certificates"
  homepage "https://wwww.kryptokoder.com"
  url "https://www.kryptokoder.com/mypdfsigner-3.1.1.tar.gz"
  sha256 "63c1009140a005acbf921117b3823f5e822f6ba38b8d41c06ff0b32a2ec6ac71"
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
