class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.0.1-ci7/OctopusTools.7.0.1-ci7.osx-x64.tar.gz"
  sha256 "7bdde1b24b55d0d3cf500e721b4b76a80365ecc16ff7e51784494537498a8d1f"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
