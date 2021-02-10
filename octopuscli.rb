class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.6"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.6/OctopusTools.7.4.6.osx-x64.tar.gz"
  sha256 "f4c9b464d4ebc1db8b90c4f0802d1c684dfd64e6340d030c24a0607b9c03d356"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
