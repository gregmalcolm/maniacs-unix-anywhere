#
# Adding a simple spam message to irb
#

@unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym).select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

def spam
  recipient = "CRB"
  recipient.size.times do 
    puts "Hello #{recipient}"
  end
  recipient
end

#spam
