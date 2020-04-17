class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.3.4"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.3.4/OctopusTools.7.3.4.osx-x64.tar.gz"
  sha256 "efaa4048541dc3df6be747699dab3b3a44448148594ec4cb9df9469a012b03cb"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
