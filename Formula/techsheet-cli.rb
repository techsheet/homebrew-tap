class TechsheetCli < Formula
  desc "TechSheet.org CLI tool"
  homepage "https://github.com/techsheet/techsheet"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/techsheet/techsheet/releases/download/v1.2.1/techsheet-macos-arm64"
      sha256 "6ed5cbc2e0d902dd705cfbcccb805ce62022f273de8c14f807089888a2fae6a0"
      version "1.2.1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/techsheet/techsheet/releases/download/v1.2.1/techsheet-linux-x64"
      sha256 "6bb3f0594c9cb1c95a98a3fb0b636a94e334c3f1bee7d5efe792c32067ef36d3"
      version "1.2.1"
    end
  end

  def install
    if OS.mac?
      bin.install "techsheet-macos-arm64" => "techsheet"
    elsif OS.linux?
      bin.install "techsheet-linux-x64" => "techsheet"
    end
  end

  test do
    system bin/"techsheet", "--version"
  end
end
