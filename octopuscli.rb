class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.3557"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.3557/OctopusTools.7.4.3557.osx-x64.tar.gz"
  sha256 "f09eaa34d65cfe2a696a2fa2190c45be4e2c988d0cb3571d2f4a7ac2fdbef8cb"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
