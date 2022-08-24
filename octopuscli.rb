class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "9.1.6"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/9.1.6/OctopusTools.9.1.6.osx-x64.tar.gz"
  sha256 "bfee49af9ac35ec3b37b8677244acd51b95f04a130a67d92e3e0687f32018f91"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
