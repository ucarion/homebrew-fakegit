class Fakegit < Formula
  desc "A fake git, to demonstrate github.com/ucarion/cli"
  homepage "https://github.com/ucarion/fakegit"
  url "https://github.com/ucarion/fakegit/releases/download/v0.1.15/fakegit_darwin_amd64.zip"
  sha256 "a1057a0bc0cc1fccdd0dce0a815a8e10c5ff1c0ba59f5fc6c2dcdcb9096147df"
  license "MIT"

  def install
    bin.install "fakegit"
    man1.install Dir["*.1"]
  end

  def caveats
    <<~EOS
      To enable autocompletions, add the following to #{shell_profile} or your
      desired shell configuration file:

        complete -o bashdefault -o default -C fakegit fakegit
    EOS
  end
end
