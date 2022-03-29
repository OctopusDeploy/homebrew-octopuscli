class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "9.0.0"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/9.0.0/OctopusTools.9.0.0.osx-x64.tar.gz"
  sha256 "d85e80009e6c2bf6c031752d5d01e33e9ba83ba4cbf454574d26f4f62d008849"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
