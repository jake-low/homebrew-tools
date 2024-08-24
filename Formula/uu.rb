# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Uu < Formula
  desc "A tool for inspecting Unicode text"
  homepage "https://github.com/jake-low/uu"
  url "https://github.com/jake-low/uu/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e2bdae53132f92311a5e75191949fcd313071c295c07e68fdf1e42ce0a40d1a2"
  license "ISC"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "uu 0.2.0", shell_output("#{bin}/uu -V").chomp
  end
end
