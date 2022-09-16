class OctopusCli < Formula
  desc "The New CLI (octopus) for Octopus Deploy, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/cli"
  license "Apache-2.0"

  # the publishing script overwrites these with the correct values
  version "0.2.2"
  macos_intel_sha256 = "082166ca47effe9916dc4b77853c843172c7ff775c4962e3802b4388ee54596b"
  macos_arm_sha256 = "60cc091011b651c378fd60c495d066a7164000c3624275b1028ca65956553318"
  linux_intel_sha256 = "6d608fd79ad7a0ddff331b5dac818dc252d9780a55b913080d983a87e55690cf"
  linux_arm_sha256 = "0e7da87c162073d7c6f7ca1689021e60a86bd8f5e4382a40109b4eb90838aef9"
  
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
