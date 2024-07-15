#
# All the world is an Object
#

@unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym).select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

def spam
  recipient = self.to_s
  recipient.size.times do 
    puts "Hello #{recipient}"
  end
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
