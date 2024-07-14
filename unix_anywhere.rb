#
# All the world is an Object
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

# self
# self.class
# "CRB".class
# "CRB".class.superclass
# [].class
# [].class.superclass
# 42.class
# 42.class.superclass
# 42.class.superclass.superclass
