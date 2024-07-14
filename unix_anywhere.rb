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
