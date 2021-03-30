def create_branch(git, string)
  git.branch(string).checkout
  system("touch #{string}.rb")
  git.add
  git.commit("#{string} commit")
end
