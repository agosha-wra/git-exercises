def create_branch(git, string)
  git.branch(string).checkout
  system("touch #{string}.rb")
  git.add
  git.commit("#{string} commit")
end

def create_branch_and_push(git, string)
  create_branch(git, string)
  git.push(git.remote('origin'))
end
