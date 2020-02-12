class OctopusCli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/6.17.2/OctopusTools.6.17.2.osx-x64.tar.gz"
  sha256 "BA190CB25A6956172BC391F0616E9547C3723A5E0017FDF39F1E5F5271E0233A"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
