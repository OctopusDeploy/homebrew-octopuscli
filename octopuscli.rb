class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.3588"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.3588/OctopusTools.7.4.3588.osx-x64.tar.gz"
  sha256 "e79dfc1677b1f2b471fa1b9aa86d2f212cbd725caed78750aedbce07377321a3"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
