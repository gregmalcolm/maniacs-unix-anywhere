@find_unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym)
@unix_keywords = @find_unix_keywords.select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

def method_missing(name, *args)
  puts name
  super
end

def spam
  msg = self.to_s.upcase
  msg.size.times { puts msg }
  msg
end

"Buy Beam Benefits".spam
42.spam

self.class.ancestors
puts "I'M ON A KERNEL"
Kernel.singleton_methods