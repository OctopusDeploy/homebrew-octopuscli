class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.1"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.1/OctopusTools.7.4.1.osx-x64.tar.gz"
  sha256 "29c7f9f8a60bceb27daae3608c3aa0adde78d84e4caaedf3e3e506fe92c9041c"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
