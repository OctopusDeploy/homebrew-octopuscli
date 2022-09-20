class OctopusCli < Formula
  desc "The New CLI (octopus) for Octopus Deploy, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/cli"
  license "Apache-2.0"

  # the publishing script overwrites these with the correct values
  version "0.2.5"
  macos_intel_sha256 = "53615a4518a8c2886bf90325758575af478a2f8b5af3d370a388e59c08e3c5f3"
  macos_arm_sha256 = "4f6c71e204eeed87043cc64a28ef14cf16589a4aea7f9cfa2ceb44265c51d284"
  linux_intel_sha256 = "4700c664deb8210e3c5b8ecac225f7dada5400f69a24e92474d4aaa76be8c90f"
  linux_arm_sha256 = "7e05266f71d9ca19c92c2f9965c6d3c5e58a99e6172c5ba369335e0b0ef6d918"
  
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
