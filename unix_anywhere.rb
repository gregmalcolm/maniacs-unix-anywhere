#
# Adding a simple message to irb
#

@unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym).select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

def greet
  recipient = "CRB"
  puts "Hello #{recipient}"
  recipient
end
