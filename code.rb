def find_unix_keywords
  `echo $(compgen -abck)`.split.uniq.map(&:to_sym)
end