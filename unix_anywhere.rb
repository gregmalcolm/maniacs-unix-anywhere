@find_unix_keywords = \
  `echo $(compgen -abck)`.split.uniq.map(&:to_sym) \
  .select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

@unix_keywords = @find_unix_keywords.reject do |cmd|
                   Kernel.respond_to?(cmd)
                 end

@unix_keywords.each do |cmd|
  Kernel.define_method(cmd) do |*args|
    system "#{cmd} #{args.join(' ')}"
  end
end

# df
# top
# ls
# sl