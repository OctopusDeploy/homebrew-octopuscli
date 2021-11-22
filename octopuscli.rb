class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.3515"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.3515/OctopusTools.7.4.3515.osx-x64.tar.gz"
  sha256 "a25f6c8c8f7ca713cbd8b19ccba52bd98e4cd5e96b89eb122d04f24f4064d0a2"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
