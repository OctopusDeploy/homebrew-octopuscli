class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.0.1-enh-createlinuxpac20/OctopusTools.7.0.1-enh-createlinuxpac20.osx-x64.tar.gz"
  sha256 "eb7c9b22cbf56b57ac951b95c8922eac4093fc4c9f1f0c6b5d692977be6170fb"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
