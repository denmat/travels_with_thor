module Git
  class Remote < Thor
    desc "add <repository> [<refspec>...]", "do a git pull from a repository into the cwd"
    def add(repository, *refspec)
      git_url = Utils::Lookups.hiera_lookup('git_url',"git@github.com:denmat")
      repo = "#{git_url}/#{repository}"
      puts "git remote add #{repo}"
    end
  end
end