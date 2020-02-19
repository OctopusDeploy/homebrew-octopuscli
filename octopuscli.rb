class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/7.0.1-enh-createlinuxpac18/OctopusTools.7.0.1-enh-createlinuxpac18.osx-x64.tar.gz"
  sha256 "29e8fbbfa605700339812b111cb6cb8668f2a62134e54c4b6566e4a7d77a8a21"

  bottle :unneeded

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
