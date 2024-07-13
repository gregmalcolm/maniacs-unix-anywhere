@find_unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym) \
                      .select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

# `echo $(compgen -abck)`.split.uniq.map.grep(/\[/)