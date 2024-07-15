#
# Other experiment: Just unix keywords
#

@unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym).select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }

class Object
  def method_missing(name, *args)
    puts name if name.include?(@unix_keywords)
    super
  end
end
