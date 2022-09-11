@find_unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym)
def unix_keywords
  @find_unix_keywords
  .select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }
end

unix_keywords.each do |cmd|
  Kernel.define_method(cmd) do |*args|
    puts "I can do #{cmd}"
  end
end

# Kernel.respond_to?(:eval)
# Kernel.respond_to?(:printf)