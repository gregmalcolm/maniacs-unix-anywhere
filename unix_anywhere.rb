#
# Which unix commands do we want to allow?
#

# puts `echo $(compgen -abck)`
#   .split
#   .uniq
#   .map(&:to_sym)
#   .grep(/^[^a-z]/)

# @unix_keywords = \
#   `echo $(compgen -abck)`
#   .split
#   .uniq
#   .map(&:to_sym)
#   .select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }
# @unix_keywords