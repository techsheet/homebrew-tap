class TechsheetCli < Formula
  desc "TechSheet.org CLI tool"
  homepage "https://techsheet.org"
  license "Apache-2.0"

  on_macos do
    on_intel do
      disable! date: "2025-01-01", because: "We don't provide legacy builds for Intel Macs. Please use docker, jvm or build from source."
    end
    on_arm do
      url "https://github.com/techsheet/techsheet/releases/download/v1.3.0/techsheet-macos-arm64"
      sha256 "3dd95d7359966eadedd635d891051f58e40c935a0c88ce8cc0b0ce2567672b13"
      version "1.3.0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/techsheet/techsheet/releases/download/v1.3.0/techsheet-linux-x64"
      sha256 "1f039b45ddd6f13d70d74e9f0e3cd70f470aafe4ecba1c645befb7b5cf17ff0b"
      version "1.3.0"
    end
    on_arm do
      url "https://github.com/techsheet/techsheet/releases/download/v1.3.0/techsheet-linux-arm64"
      sha256 "a42b69242a7ad5bb597b992ff44c4a2270db84b4f4b586be8cabb77441d84962"
      version "1.3.0"
    end
  end

  def install
    if OS.mac?
      bin.install "techsheet-macos-arm64" => "techsheet"
    elsif OS.linux?
      bin.install "techsheet-linux-#{Hardware::CPU.arm? ? "arm64" : "x64"}" => "techsheet"
    end
  end

  test do
    system bin/"techsheet", "--version"
  end
end