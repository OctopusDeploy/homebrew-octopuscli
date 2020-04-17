class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.3.3"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.3.3/OctopusTools.7.3.3.osx-x64.tar.gz"
  sha256 "b90be3c47551bdc2a3b4d0be48f65fbeae04621ff2d2036d84b464f17d23b490"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
