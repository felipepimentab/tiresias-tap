class TiresiasCli < Formula
  desc "Tiresias firmware development environment checker"
  homepage "https://github.com/felipepimentab/tiresias-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/felipepimentab/tiresias-cli/releases/download/v0.1.4/tiresias-macos"
      sha256 "7d12844d1baa1e116e1e32518bac4917620b9db3c579fa75cc126fcb363d2f83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/felipepimentab/tiresias-cli/releases/download/v0.1.4/tiresias-linux"
      sha256 "a1045658d449832269bed5b6a5d4d5403f0a799789dc452c950e020392decba7"
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
    assert_match version.to_s, shell_output("#{bin}/tiresias --version")
    assert_match "Tiresias firmware development environment checker", shell_output("#{bin}/tiresias --help")
  end
end
