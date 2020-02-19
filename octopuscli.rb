class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.0.1-ci8/OctopusTools.7.0.1-ci8.osx-x64.tar.gz"
  sha256 "9f02cbd29862d578e311a76f9869d6d0c5ebef5eb72482fcdc36fc19dc071b88"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
