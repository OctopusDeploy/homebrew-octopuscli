class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.3.0/OctopusTools.7.3.0.osx-x64.tar.gz"
  sha256 "1521cdd1d6342e9750b2aa2df8b2fe6cbdffa93fc8df6ae90a21ae9cdb37aa5f"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
