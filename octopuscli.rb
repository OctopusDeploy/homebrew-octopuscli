class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.0.1-enh-createlinuxpac10/OctopusTools.7.0.1-enh-createlinuxpac10.osx-x64.tar.gz"
  sha256 "d7ac0f0fcbeda1325a2d4e25450d34fadd3dd489ff97b32cabebdd6e257cbe11"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
