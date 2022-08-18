class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "9.1.4"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/9.1.4/OctopusTools.9.1.4.osx-x64.tar.gz"
  sha256 "6bc7aac6a0334a1ee2b403803cbd87b4fcd6ff68dd43fe34104491a714fb1abd"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
