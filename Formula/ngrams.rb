# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Ngrams < Formula
  desc "Calculates ngram frequencies in text files"
  homepage "https://github.com/jake-low/ngrams"
  url "https://github.com/jake-low/ngrams/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ffeff0f1f43923869bb42ec9d88691b04da283187f999199d6759098df2cbe4a"
  license "ISC"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ngrams 1.0.0", shell_output("#{bin}/ngrams -V").chomp
  end
end
