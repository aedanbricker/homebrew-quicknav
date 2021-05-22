# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Quicknav < Formula
  desc "Quicknav is a command line tool that allows you to easily jump to specific locations in your filesystem from a simple command. Quicknav is built for terminal navigation on Unix operating systems."
  homepage "https://github.com/MrDogeBro/quicknav"
  url "https://github.com/MrDogeBro/quicknav/archive/v1.1.0.tar.gz"
  sha256 "af0dfdc00d776fec258ea6c8aa997824485c729a18c65ff93ebb3fb91ba5cfd1"
  version "1.1.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "quicknav"
    bin.install "target/release/quicknav"
  end
end
