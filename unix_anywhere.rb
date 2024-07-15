#
# Experiment: define methods on the Kernel
#

@unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym).select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }
@unix_keywords.each do |cmd|
  Kernel.define_method(cmd) do |*args|
    puts "I can do #{cmd} better than you"
  end
end

# Kernel.respond_to?(:eval)
# Kernel.respond_to?(:hash)
# Kernel.respond_to?(:printf)