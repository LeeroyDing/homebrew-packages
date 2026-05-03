# typed: false
# frozen_string_literal: true

# Homebrew formula for audiobookshelf-cli (abs)
# A command-line interface for managing Audiobookshelf servers.
class AudiobookshelfCli < Formula
  desc "Command-line interface for Audiobookshelf servers"
  homepage "https://github.com/LeeroyDing/audiobookshelf-cli"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LeeroyDing/audiobookshelf-cli/releases/download/v#{version}/audiobookshelf-cli_Darwin_arm64.tar.gz"
      sha256 "86a965b51f9af601d7be16e5bb159b54482fa5742f15b70d7e3986052ab256f1"
    end

    on_intel do
      url "https://github.com/LeeroyDing/audiobookshelf-cli/releases/download/v#{version}/audiobookshelf-cli_Darwin_x86_64.tar.gz"
      sha256 "621557406f1709d05fddfef0b12104887b594f147ca3ecb26890dbe2b82bb68e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LeeroyDing/audiobookshelf-cli/releases/download/v#{version}/audiobookshelf-cli_Linux_arm64.tar.gz"
      sha256 "52407b59c10ef503aa37072932741ae246b5e03683b83b7b1ff9b254b32e60d8"
    end

    on_intel do
      url "https://github.com/LeeroyDing/audiobookshelf-cli/releases/download/v#{version}/audiobookshelf-cli_Linux_x86_64.tar.gz"
      sha256 "017bffb40ca796a9ba3dd267f70928a607d48f0a3b49f7cf383f7c026ae17898"
    end
  end

  def install
    bin.install "abs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/abs --version 2>&1", 0)
  end
end
