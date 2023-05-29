# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Barchart < Formula
  desc "Command line tool to print simple bar charts"
  homepage "https://github.com/jake-low/barchart"
  url "https://github.com/jake-low/barchart/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e912cc732550d40b57b186c24961028b2e44d77a096ddcb9c327bcb7f3a22de5"
  license "ISC"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "barchart 1.0.0", shell_output("#{bin}/barchart -V").chomp
  end
end
