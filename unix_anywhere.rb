#
# That was scary. to_ary gets a pass
#

@unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym).select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

def method_missing(name, *args)
  #puts name
  puts name unless name.include?(%w[to_ary])
  super
end
