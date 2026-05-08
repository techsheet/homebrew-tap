class TechsheetCli < Formula
  desc "TechSheet.org CLI tool"
  homepage "https://github.com/techsheet/techsheet"
  url "https://github.com/techsheet/techsheet/releases/download/v1.2.1/techsheet-macos-arm64"
  version "1.2.1"
  sha256 "6ed5cbc2e0d902dd705cfbcccb805ce62022f273de8c14f807089888a2fae6a0"
  license "Apache-2.0"

  def install
    bin.install "techsheet-macos-arm64" => "techsheet"
  end

  test do
    system bin/"techsheet", "--version"
  end
end
