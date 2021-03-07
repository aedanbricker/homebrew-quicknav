# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Quicknav < Formula
  desc "Quicknav is a command line tool that allows you to easily jump to specific locations in your filesystem from a simple command. Quicknav is built for terminal navigation on Unix operating systems."
  homepage "https://github.com/MrDogeBro/quicknav"
  url "https://github.com/MrDogeBro/quicknav/archive/v0.1.0.tar.gz"
  sha256 "bfda57e4709fe35a32bb51d83ed4eb8f81c94d8b56a222b971400032b871ce10"
  version "0.1.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "rustscan"
    bin.install "target/release/quicknav"
  end
end
