require "given_keyword_args/version"

module GivenKeywordArgs
  private

  def __given_keyword_args__(local_binding, with_rest = false)
    method_name = caller_locations[1].label
    meth = method(method_name)
    meth.parameters.each_with_object({}) do |(type, name), h|
      if type == :key || type == :keyreq
        h[name] = local_binding.local_variable_get(name)
      elsif with_rest && type == :keyrest
        value = local_binding.local_variable_get(name)
        h.merge!(value) unless value.empty?
      end
    end
  end
end

require 'given_keyword_args/given_keyword_args'

Object.include(GivenKeywordArgs)
