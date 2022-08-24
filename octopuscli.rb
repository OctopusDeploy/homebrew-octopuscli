class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "9.1.7"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/9.1.7/OctopusTools.9.1.7.osx-x64.tar.gz"
  sha256 "bd5f51b6bb2927666926e1c556a086ea5f288ad16600d1e5254290afc2d23ff6"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
