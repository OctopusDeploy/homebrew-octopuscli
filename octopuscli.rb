class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "9.1.3"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/9.1.3/OctopusTools.9.1.3.osx-x64.tar.gz"
  sha256 "4dc264100800a503025ae63de9f74e12ddc55506737a41deeed3ba352ca80323"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
