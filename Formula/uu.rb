# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Uu < Formula
  desc "A tool for inspecting Unicode text"
  homepage "https://github.com/jake-low/uu"
  url "https://github.com/jake-low/uu/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "58cff10b9be2f5c2dc705c026da0c964878b6804c593d2407a01a83387fe0f6d"
  license "ISC"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "uu 0.1.0", shell_output("#{bin}/uu -V").chomp
  end
end
