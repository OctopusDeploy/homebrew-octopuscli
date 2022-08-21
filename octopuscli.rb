class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "9.1.5"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/9.1.5/OctopusTools.9.1.5.osx-x64.tar.gz"
  sha256 "af7936631315ae4e7b1c4da1b679a95c81dcd8c8b3e5a87ad790c7b6ef77ab28"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
