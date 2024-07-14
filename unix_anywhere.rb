#
# Remove kernel methods from unix commands list
#

@unix_keywords = `echo $(compgen -abck)`.split.uniq.map(&:to_sym).select { |cmd| cmd.to_s =~ /^[a-z_]+$/ }
@allowed_unix_keywords = \
  @unix_keywords.reject do |cmd|
    Kernel.respond_to?(cmd)
  end

# @allowed_unix_keywords.include?(:chmod)
# @allowed_unix_keywords.include?(:eval)
# @allowed_unix_keywords.include?(:printf)