@find_unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym)

def filtered_unix_keywords
  @find_unix_keywords
  .select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }
  .reject { |cmd| Kernel.respond_to?(cmd) }
end

@unix_keywords = filtered_unix_keywords

@unix_keywords.each do |cmd|
  Kernel.define_method(cmd) do |*args|
    puts "I can do #{cmd}"
  end
end

# ps
# ls
# printf