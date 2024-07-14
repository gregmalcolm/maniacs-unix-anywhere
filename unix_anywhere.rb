#
# Peeking into the Object
#

@unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym).select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

# def method_missing(name, *args)
#   #puts name
#   #puts name unless name.include?(%w[to_ary])
#   puts name name.include?(@unix_keywords)
#   super
# end

# Object.ancestors
# BasicObject.instance_methods # Introduced in Ruby 1.9

# Kernel.instance_methods
# Kernel.instance_methods.count

# BasicObject.respond_to?(:puts)
# Kernel.respond_to?(:puts)
