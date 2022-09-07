@find_unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym)
@unix_keywords = @find_unix_keywords.select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

# def method_missing(name, *args)
#   if @unix_keywords.include?(name)
#     system name
#   end
# end

def hello_is_real
  "hi"
end
Object.instance_methods.grep(/hello/)

def method_missing(name, *args)
  puts name
  super
end
