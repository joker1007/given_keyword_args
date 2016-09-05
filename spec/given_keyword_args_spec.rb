require 'spec_helper'

describe GivenKeywordArgs do
  class Dummy
    def dummy(foo:, bar: "bar", **options)
      given_keyword_args
    end

    def dummy_with_rest(foo:, bar: "bar", **options)
      given_keyword_args_with_rest
    end
  end

  describe "given_keyword_args" do
    it "returns given :key, :keyreq arguments as Hash" do
      args = Dummy.new.dummy(foo: "foo", other1: "other1", other2: "other2")
      expect(args).to eq({foo: "foo", bar: "bar"})
    end
  end

  describe "given_keyword_args_with_rest" do
    it "returns given :key, :keyreq, :keyrest arguments as Hash" do
      args = Dummy.new.dummy_with_rest(foo: "foo", other1: "other1", other2: "other2")
      expect(args).to eq({foo: "foo", bar: "bar", other1: "other1", other2: "other2"})
    end
  end
end
