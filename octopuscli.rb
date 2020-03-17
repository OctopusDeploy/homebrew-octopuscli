class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.2.0"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.2.0/OctopusTools.7.2.0.osx-x64.tar.gz"
  sha256 "4fdc3b4caf707d121ffd359f7ee18685645395ab18d443410001b7f0a7bee19d"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
