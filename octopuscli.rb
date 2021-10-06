class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.3462"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.3462/OctopusTools.7.4.3462.osx-x64.tar.gz"
  sha256 "3ffc9abf456dc88bbb6df0179c06d73456ae7dcfe520968128137f4cdeaf7e61"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
