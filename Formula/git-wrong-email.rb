class GitWrongEmail < Formula
  desc "Refuse commits and pushes made under the wrong email for the repository"
  homepage "https://github.com/neosergio/git-wrong-email"
  url "https://github.com/neosergio/git-wrong-email/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "359422347533fbadc7b898c4931d07a7b2155f732780e14a5f35f57028c2c504"
  license "MIT"
  head "https://github.com/neosergio/git-wrong-email.git", branch: "main"

  def install
    bin.install "bin/git-wrong-email"
    libexec.install "hook/git-wrong-email-hook"
    pkgshare.install "examples/rules"
  end

  def caveats
    <<~EOS
      Nothing is active until you run:
        git wrong-email install
      then edit ~/.config/git-wrong-email/rules, and check the result with:
        git wrong-email doctor

      install copies the hook, so after `brew upgrade` run it again
      to pick up the new version.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-wrong-email --version")

    ENV["HOME"] = testpath
    ENV["GIT_CONFIG_GLOBAL"] = testpath/".gitconfig"
    system bin/"git-wrong-email", "install"
    assert_path_exists testpath/".config/git-wrong-email/hooks/pre-push"
    assert_match "active         yes", shell_output("#{bin}/git-wrong-email status")
    assert_match "core.hooksPath ->", shell_output("#{bin}/git-wrong-email doctor", 1)
  end
end
