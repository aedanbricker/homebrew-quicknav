# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Quicknav < Formula
  desc "Quicknav is a command line tool that allows you to easily jump to specific locations in your filesystem from a simple command. Quicknav is built for terminal navigation on Unix operating systems."
  homepage "https://github.com/MrDogeBro/quicknav"
  url "https://github.com/MrDogeBro/quicknav/archive/v1.2.0.tar.gz"
  sha256 "62864300f972922725b57bf7bdf7c2025995a390b6b25fc8f713b9cb090d8387"
  version "1.2.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "quicknav"
    bin.install "target/release/quicknav"
  end
end
