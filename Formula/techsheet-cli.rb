class TechsheetCli < Formula
  desc "TechSheet.org CLI tool"
  homepage "https://github.com/techsheet/techsheet"
  url "https://github.com/techsheet/techsheet/releases/download/v1.3.0/techsheet-macos-arm64"
  sha256 "3dd95d7359966eadedd635d891051f58e40c935a0c88ce8cc0b0ce2567672b13"
  license "Apache-2.0"
  version "1.3.0"

  def install
    bin.install "techsheet-macos-arm64" => "techsheet"
  end

  test do
    system bin/"techsheet", "--version"
  end
end
