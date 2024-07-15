#
# Because Ruby is a Smalltalk Stan
#

@unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym).select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

def spam
  recipient = self.to_s
  recipient.size.times do 
      puts "Hello #{msg}"
  end
end

#spam

#42.spam
#42.send(:spam)
#"buy spam".send(:spam)
#But what if we wrap reopen Object and add spam there?