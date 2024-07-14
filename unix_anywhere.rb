#
# Other experiment: Just unix keywords
#

@unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym).select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

def method_missing(name, *args)
  puts name name.include?(@unix_keywords)
  super
end

# def spam
#   msg = self.to_s.upcase
#   msg.size.times { puts msg }
#   msg
# end

# # Nowadays (Ruby 3.3) it's only accessibly privately
# "Buy spam".send(:spam)
# 42.send(:spam)

# self.class.ancestors
# puts "I'M ON A KERNEL"
# Kernel.singleton_methods