# typed: false
# frozen_string_literal: true

# Homebrew formula for seerr-cli
# A command-line interface for Seerr and Overseerr media managers.
class SeerrCli < Formula
  desc "Command-line interface for Seerr and Overseerr media managers"
  homepage "https://github.com/LeeroyDing/seerr-cli"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LeeroyDing/seerr-cli/releases/download/v#{version}/seerr-cli_Darwin_arm64.tar.gz"
      sha256 "3ca262ada5534667e88c7d7cb33de7da1e55efabdda0e6b677f6a2219d86d31c"
    end

    on_intel do
      url "https://github.com/LeeroyDing/seerr-cli/releases/download/v#{version}/seerr-cli_Darwin_x86_64.tar.gz"
      sha256 "45e5746173aa5bae7166340355697dacd0b3d72123f88154a3ec1674f9e93cb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LeeroyDing/seerr-cli/releases/download/v#{version}/seerr-cli_Linux_arm64.tar.gz"
      sha256 "7fb278e9e572be87df4b7b8303f08d6a5ee8c1fc778683cecfb839ba6924e698"
    end

    on_intel do
      url "https://github.com/LeeroyDing/seerr-cli/releases/download/v#{version}/seerr-cli_Linux_x86_64.tar.gz"
      sha256 "13caedf2cf297bb096a75a2d831682db367dd9eed081496b20fa0552a80818f7"
    end
  end

  def install
    bin.install "seerr-cli" => "seerr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/seerr --version 2>&1", 0)
  end
end
