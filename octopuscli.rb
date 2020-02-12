class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/6.17.2/OctopusTools.6.17.2.osx-x64.tar.gz"
  sha256 "ba190cb25a6956172bc391f0616e9547c3723a5e0017fdf39f1e5f5271e0233a"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
