class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.1.0/OctopusTools.7.1.0.osx-x64.tar.gz"
  sha256 "e0e2e63ca8482fa35984bf9757601dd7b406a78c66eb59c3da86b04251f68c55"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
