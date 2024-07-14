#
# Experiment: Echo all the things
#

@unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym).select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

def method_missing(name, *args)
  puts name
  super
end
