class Fakegit < Formula
  desc "A fake git, to demonstrate github.com/ucarion/cli"
  homepage "https://github.com/ucarion/fakegit"
  url "https://github.com/ucarion/fakegit/releases/download/v0.1.11/fakegit_darwin_amd64.zip"
  sha256 "c155c3ca17a64da7861301eed7e889c339ffbd572e501be39084229174395115"
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
