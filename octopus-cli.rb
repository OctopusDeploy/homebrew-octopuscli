class OctopusCli < Formula
  desc "The New CLI (octopus) for Octopus Deploy, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/cli"
  license "Apache-2.0"

  # the publishing script overwrites these with the correct values
  version "0.2.4"
  macos_intel_sha256 = "afed679fabfae2ce2f29e368a85c1aaf39238328af6f391d7afadb884e876578"
  macos_arm_sha256 = "e458785896e7de1920a83340e4245ea7cf99d18431306e59cd1e1c0eb42d513d"
  linux_intel_sha256 = "cd5e45e5f609d0cc9f0ab7631e6757f62d07e6ac84c1425c9d95a644957394b5"
  linux_arm_sha256 = "e02380ecf90c148f2eb2658e10af177db33d054500b646f7e3ee613d278f2198"
  
  # use ruby to generate the correct values based on above variables
  __base_url = "https://github.com/OctopusDeploy/cli/releases/download/v#{version}"
  on_macos do
    if Hardware::CPU.intel?
      url "#{__base_url}/octopus_#{version}_macOS_x86_64.tar.gz"
      sha256 macos_intel_sha256
    elsif Hardware::CPU.arm?
      url "#{__base_url}/octopus_#{version}_macOS_arm64.tar.gz"
      sha256 macos_arm_sha256 
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "#{__base_url}/octopus_#{version}_Linux_x86_64.tar.gz"
      sha256 linux_intel_sha256
    elsif Hardware::CPU.arm?
      url "#{__base_url}/octopus_#{version}_Linux_arm64.tar.gz"
      sha256 linux_arm_sha256
    end
  end

  def install
    bin.install "octopus"
    # future: enhance the CLI to generate completion scripts, and install them as follows
    # bash_completion.install "completions/octopus.bash" => "octopus"
    # zsh_completion.install "completions/octopus.zsh" => "_octopus"
    # fish_completion.install "completions/octopus.fish"
  end

  test do
    system "#{bin}/octopus", "--help"
  end
end
