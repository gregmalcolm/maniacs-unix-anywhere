def find_unix_keywords
  `echo $(compgen -abck)`.split.uniq.map(&:to_sym)
end

def unix_keywords
  find_unix_keywords
  .select { |cmd| keyword.to_s =~ /^[a-z_]+$/ }
end

#find_unix_keywords.grep(/\[/)