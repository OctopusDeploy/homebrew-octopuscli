class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.3.7"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.3.7/OctopusTools.7.3.7.osx-x64.tar.gz"
  sha256 "7e4e45d5d1e43c074e39c1b1267520b22018277d9574485c88b249da1159ebba"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
