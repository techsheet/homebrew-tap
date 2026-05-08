class TechsheetCli < Formula
  desc "TechSheet.org CLI tool"
  homepage "https://github.com/techsheet/techsheet"
  url "https://github.com/techsheet/techsheet/releases/download/v1.2.0/techsheet-macos-arm64"
  sha256 "93ac0a39c8b4773f06f3f94ddde841925cb550a515174b655da57ca5f25522d0"
  license "Apache-2.0"
  version "1.2.0"

  def install
    bin.install "techsheet-macos-arm64" => "techsheet"
  end

  test do
    system bin/"techsheet", "--version"
  end
end
