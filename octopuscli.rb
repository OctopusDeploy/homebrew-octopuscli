class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.3260"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.3260/OctopusTools.7.4.3260.osx-x64.tar.gz"
  sha256 "a92183a5ac670dc6185575d4e0319279997c49991e0417fb9a3cb21f5028fc37"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
