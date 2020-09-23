class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.2"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.2/OctopusTools.7.4.2.osx-x64.tar.gz"
  sha256 "0399843e8b6c27caef8d077fbdb06845225fb5ed5849d15640c5795db2990acc"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
