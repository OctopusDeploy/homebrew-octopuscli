class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.0.1/OctopusTools.7.0.1.osx-x64.tar.gz"
  sha256 "b4675b224ffbeb53ce561ac6778592b12a53e8b5b00aeda98b248ade00d1a124"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
