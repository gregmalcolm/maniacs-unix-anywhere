#
# Because Ruby is a Smalltalk Stan
#

@unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym).select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

def spam
  msg = self.to_s
  msg.size.times do 
    puts "Hello #{msg}"
  end
  msg
end

#spam

#42.spam
#42.send(:spam)
#"Buy spam".send(:spam)


# "Buy spam".send(:spam)
# 42.send(:spam)

# def method_missing(name, *args)
#   return puts name if @unix_keywords.include?(name)
#   super
# end

# def method_missing(name, *args)
#   puts name unless name.include?(%w[to_ary])
#   super
# end

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