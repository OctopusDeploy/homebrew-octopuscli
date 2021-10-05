class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "3451.0.3458"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/3451.0.3458/OctopusTools.3451.0.3458.osx-x64.tar.gz"
  sha256 "70848c3c8c9c2c679f7dd17cf1604f11718d2a8ef1246a217548fc7fa0105eeb"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
