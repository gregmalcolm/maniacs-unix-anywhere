@unix_keywords = \
  `echo $(compgen -abck)`.split.uniq.map(&:to_sym) \
  .select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

# def method_missing(name, *args)
#   return puts name if @unix_keywords.include?(name)
#   super
# end
