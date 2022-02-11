class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.3637"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.3637/OctopusTools.7.4.3637.osx-x64.tar.gz"
  sha256 "eb2359bdb0431ede2b9e309d194eab902a0d9fef8b69843c7a2516e88cd5bdec"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
