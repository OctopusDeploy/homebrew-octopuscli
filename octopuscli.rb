class Octopuscli < Formula
  desc "The Octopus CLI (octo) for Octopus, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/OctopusCLI"
  version "8.0.0"
  url "https://octopus-downloads.s3-eu-west-1.amazonaws.com/octopus-tools/8.0.0/OctopusTools.8.0.0.osx-x64.tar.gz"
  sha256 "4f82c542a748a7bb73309d9875ded7cda06837b932f57be7a20ac4c3aa9e6a47"

  def install
    bin.install "octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
