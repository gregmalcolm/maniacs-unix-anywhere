@find_unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym)
@unix_keywords = @find_unix_keywords.select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

# def spam(stuff)
#   msg = stuff.to_s.upcase
#   msg.size.times { puts stuff }
#   msg
# end

# Object.instance_methods
# Object.instance_methods.grep(/spam/)

def method_missing(name, *args)
  puts name
  super
end
