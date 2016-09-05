require "given_keyword_args/version"

module GivenKeywordArgs
  private

  def __given_keyword_args__(local_binding = binding)
    p local_binding.local_variable_get(:foo)
  end
end

require 'given_keyword_args/given_keyword_args'

Object.include(GivenKeywordArgs)

class Hoge
  def test(foo:)
    given_keyword_args(binding)
  end
end

Hoge.new.test(foo: "aaa")
