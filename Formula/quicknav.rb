# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Quicknav < Formula
  desc "Quicknav is a command line tool that allows you to easily jump to specific locations in your filesystem from a simple command. Quicknav is built for terminal navigation on Unix operating systems."
  homepage "https://github.com/MrDogeBro/quicknav"
  url "https://github.com/MrDogeBro/quicknav/archive/v1.3.0.tar.gz"
  sha256 "b5d077acf107d93f93c8ff45e80f57fdf5e1667b4e681dae31672627fb01793d"
  version "1.3.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "quicknav"
    bin.install "target/release/quicknav"
  end
end
