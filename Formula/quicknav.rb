# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Quicknav < Formula
  desc "Quicknav is a command line tool that allows you to easily jump to specific locations in your filesystem from a simple command. Quicknav is built for terminal navigation on Unix operating systems."
  homepage "https://github.com/MrDogeBro/quicknav"
  url "https://github.com/MrDogeBro/quicknav/archive/v1.0.0.tar.gz"
  sha256 "7a2ddc6834a34c3b3bcee5b8e72912c6fcbfa077864e960ac44eef8dbdfa2cac"
  version "1.0.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "quicknav"
    bin.install "target/release/quicknav"
  end
end
