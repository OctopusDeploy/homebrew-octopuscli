class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "8.0.1"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/8.0.1/OctopusTools.8.0.1.osx-x64.tar.gz"
  sha256 "7ee1f3f69b3e49696a7358661d48fef4c85713baa6e0256ff70d2e875fe1e383"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
