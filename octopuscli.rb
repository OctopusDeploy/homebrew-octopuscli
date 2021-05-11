class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "7.4.3211"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.4.3211/OctopusTools.7.4.3211.osx-x64.tar.gz"
  sha256 "52f69b8ff07ad0fe8d29eed57f79f04f252c07373368f96e7126bb62093fd6dd"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
