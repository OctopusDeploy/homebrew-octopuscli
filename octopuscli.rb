class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.3662"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.3662/OctopusTools.7.4.3662.osx-x64.tar.gz"
  sha256 "0f9901533e683f9205c41d53c24385bd25d9a3e5229c1e35e52b0ab2484c0254"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
