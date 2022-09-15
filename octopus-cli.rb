class OctopusCli < Formula
  desc "The New CLI (octopus) for Octopus Deploy, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/cli"
  license "Apache-2.0"

  # the publishing script overwrites these with the correct values
  version "0.2.3"
  macos_intel_sha256 = "083546f9c65152236af19d25868b5a4904a9836876249c79c660d2e869e0a755"
  macos_arm_sha256 = "9f50a81fa96325f9ba2d08626361882f6016a0f4253615a93d45cd29ad4b4ef7"
  linux_intel_sha256 = "1ec20750d986e4d5044f5532f47535546dd5cb24da0b3bc791de9d229ae2b7be"
  linux_arm_sha256 = "b98195334ce3713d62a064a0c2dae8a04bb1848e27e3dba3ddab210a1c217929"
  
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
    # TODO completions?
    # bash_completion.install "completions/goreleaser.bash" => "goreleaser"
    # zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
    # fish_completion.install "completions/goreleaser.fish"
    # man1.install "manpages/goreleaser.1.gz"
  end

  test do
    system "#{bin}/octopus", "--help"
  end
end
