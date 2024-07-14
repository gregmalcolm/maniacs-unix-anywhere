#puts `echo $(compgen -abck)`.split.uniq.map.grep(/\[/)

# @unix_keywords = \
#   `echo $(compgen -abck)`.split.uniq.map(&:to_sym) \
#   .select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

puts "wat"