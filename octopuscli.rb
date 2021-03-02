class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.3124"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.3124/OctopusTools.7.4.3124.osx-x64.tar.gz"
  sha256 "26dcd890fc1e9b3d126bf19d0fb7798580a36b908d9ebd00df2a7f1b0b204b22"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
