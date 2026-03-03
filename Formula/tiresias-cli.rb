class TiresiasCli < Formula
  desc "Tiresias firmware development environment checker"
  homepage "https://github.com/felipepimentab/tiresias-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/felipepimentab/tiresias-cli/releases/download/v0.1.3/tiresias-macos"
      sha256 "d0cb4917cbcf93aa0455c21724982ac27873dca05674a0beaa078d67fc9e1101"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/felipepimentab/tiresias-cli/releases/download/v0.1.3/tiresias-linux"
      sha256 "c86d7af3c222e114880f77f80021d17343d46c494a5a431d9eacf6fc6c129ff8"
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
