def find_unix_keywords
  system('echo $(compgen -abck)')
end