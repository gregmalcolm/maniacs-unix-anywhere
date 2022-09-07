@find_unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym)
@unix_keywords = @find_unix_keywords.select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

Object.ancestors
Kernel.singleton_methods

[:ps, :ls, :pwd].each do |cmd|
  Kernel.define_method(cmd) do
    puts "I can do #{cmd}"
  end
end
