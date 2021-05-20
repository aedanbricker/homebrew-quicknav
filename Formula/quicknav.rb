# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Quicknav < Formula
  desc "Quicknav is a command line tool that allows you to easily jump to specific locations in your filesystem from a simple command. Quicknav is built for terminal navigation on Unix operating systems."
  homepage "https://github.com/MrDogeBro/quicknav"
  url "https://github.com/MrDogeBro/quicknav/archive/v1.0.2.tar.gz"
  sha256 "dd2bfdb47997a9e5609d69fbecbaea51eee605527fcba1ad27546df2ffa15342"
  version "1.0.2"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "quicknav"
    bin.install "target/release/quicknav"
  end
end
