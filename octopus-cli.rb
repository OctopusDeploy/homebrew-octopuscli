class OctopusCli < Formula
  desc "The New CLI (octopus) for Octopus Deploy, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/cli"
  version "0.2.0"
  url "https://github.com/OctopusDeploy/cli/releases/download/v0.2.0/octopus_0.2.0_Darwin_x86_64.tar.gz"
  sha256 "ec4f2c656d5dfe66c20d6e37cb61f03fd1ef780ae0e2e6fa8eb65cd699fe4c70"

  def install
    bin.install "octopus"
  end

  test do
    system "#{bin}/octopus", "--help"
  end
end
