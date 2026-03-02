class TiresiasCli < Formula
  desc "Tiresias firmware development environment checker"
  homepage "https://github.com/felipepimentab/tiresias-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/felipepimentab/tiresias-cli/releases/download/v0.1.1/tiresias-macos"
      sha256 "908b4ed09d1afb28f525ed961874d146510316c2eae3f3884d92ba7691a7d422"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/felipepimentab/tiresias-cli/releases/download/v0.1.1/tiresias-linux"
      sha256 "9c80bbc5470e81d020bede900c5f2dc8c02c7b7a6a3e672bd8e76b5053fc56ca"
    end
  end

  def install
    if OS.mac?
      bin.install "tiresias-macos" => "tiresias"
    elsif OS.linux?
      bin.install "tiresias-linux" => "tiresias"
    end
  end

  test do
    assert_match "Tiresias firmware development environment checker", shell_output("#{bin}/tiresias --help")
  end
end
