# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OctopusCli < Formula
  desc "The New CLI (octopus) for Octopus Deploy, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/cli"
  version "2.14.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/OctopusDeploy/cli/releases/download/v2.14.0/octopus_2.14.0_macOS_amd64.tar.gz"
      sha256 "0c25c528017b000bae9317f3e7d8d2d5f2f4bafc39aca0350fde44cb557dbd97"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
    on_arm do
      url "https://github.com/OctopusDeploy/cli/releases/download/v2.14.0/octopus_2.14.0_macOS_arm64.tar.gz"
      sha256 "cacb75d2e6b298d557593f5507548523dd731fe1fe5b6b5515ee466db9fb8836"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OctopusDeploy/cli/releases/download/v2.14.0/octopus_2.14.0_linux_amd64.tar.gz"
        sha256 "5e6696a35a48f510639abbfe3aedd4a05e1a83cba4fa3ca104a5b9219c018aa4"

        def install
          bin.install "octopus"
          # future: enhance the CLI to generate completion scripts, and install them as follows
          # bash_completion.install "completions/octopus.bash" => "octopus"
          # zsh_completion.install "completions/octopus.zsh" => "_octopus"
          # fish_completion.install "completions/octopus.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OctopusDeploy/cli/releases/download/v2.14.0/octopus_2.14.0_linux_arm64.tar.gz"
        sha256 "c230181007e67164ed26a794edc184a8e436073d8630edf71f08cf94a6a50e3c"

        def install
          bin.install "octopus"
          # future: enhance the CLI to generate completion scripts, and install them as follows
          # bash_completion.install "completions/octopus.bash" => "octopus"
          # zsh_completion.install "completions/octopus.zsh" => "_octopus"
          # fish_completion.install "completions/octopus.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/octopus", "--help"
  end
end
