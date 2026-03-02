class TiresiasCli < Formula
  desc "Tiresias firmware development environment checker"
  homepage "https://github.com/felipepimentab/tiresias-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/felipepimentab/tiresias-cli/releases/download/v0.1.2/tiresias-macos"
      sha256 "0b5bb651e8c784521f84fdd4b65201912abf4aad5f599cf5976afaaff9c64254"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/felipepimentab/tiresias-cli/releases/download/v0.1.2/tiresias-linux"
      sha256 "cd876a38704efff888cf2cd6238b2cc3d56eb7da14f4bc6d69948dc5c5a126e2"
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
