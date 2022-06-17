class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "9.1.1"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/9.1.1/OctopusTools.9.1.1.osx-x64.tar.gz"
  sha256 "af15937610e48404921d114ddfc16b3ba1b668f4cac229ea1181855d74303bf0"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
