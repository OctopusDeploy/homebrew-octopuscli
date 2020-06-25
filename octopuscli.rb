class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.0"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.0/OctopusTools.7.4.0.osx-x64.tar.gz"
  sha256 "b575b66b119f1b8240655938bc0c4f7968499e2dfc04d3d45db57e04262b771c"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
