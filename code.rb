@find_unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym)
@unix_keywords = @find_unix_keywords.select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

# `ps`
# `compgen -abck`
# @find_unix_keywords.grep(/\[/)