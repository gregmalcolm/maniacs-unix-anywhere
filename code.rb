@find_unix_keywords = \
  `echo $(compgen -abck)`.split.uniq.map(&:to_sym) \
  .select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

def method_missing(name, *args)
  if @unix_keywords.include?(name)
    puts name
  end
end
