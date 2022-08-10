# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Manala < Formula
  desc "Let your project's plumbing up to date"
  homepage "https://github.com/manala/manala"
  version "0.17.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/manala/manala/releases/download/0.17.4/manala_Darwin_x86_64.tar.gz"
      sha256 "d8f07a805d0900bc1e632a45c18e337f1faf28ef0ce6782863d45796130453b7"

      def install
        bin.install "manala"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/manala/manala/releases/download/0.17.4/manala_Darwin_arm64.tar.gz"
      sha256 "8d2b546c04b6ce9d16c60b67201d962084f552469c5f009ac5500a6f57f2c911"

      def install
        bin.install "manala"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/manala/manala/releases/download/0.17.4/manala_Linux_armv6.tar.gz"
      sha256 "9f6449f3089cbf2fb618120b575f1cdbccccc53cf132f70c10ddc84371481feb"

      def install
        bin.install "manala"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/manala/manala/releases/download/0.17.4/manala_Linux_arm64.tar.gz"
      sha256 "4086fba2c94d01f063bfb9b2f60db26bb0266b63dcfa75b975b255f612d2f8b6"

      def install
        bin.install "manala"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/manala/manala/releases/download/0.17.4/manala_Linux_x86_64.tar.gz"
      sha256 "7dcee3ca5569d7117b5b3e535512f132e9132c0126dc498c5c92aecddc3ba1b1"

      def install
        bin.install "manala"
      end
    end
  end

  test do
    system "#{bin}/manala --version"
  end
end
