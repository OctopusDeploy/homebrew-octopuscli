class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.3627"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.3627/OctopusTools.7.4.3627.osx-x64.tar.gz"
  sha256 "0bf296e728029dcdb671d930e844c00c466bba14e0109091b02173f2b4859d68"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
