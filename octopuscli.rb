class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.3.2"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.3.2/OctopusTools.7.3.2.osx-x64.tar.gz"
  sha256 "42893aba12478c3019288f163db3549f8ed7aaccfc05f30925a0cc3d5f56843c"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
