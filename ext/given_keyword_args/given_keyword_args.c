#include <ruby.h>
#include <ruby/intern.h>

static VALUE
ruby_given_keyword_args(VALUE self)
{
    VALUE binding = rb_binding_new();
    return rb_funcall(self, rb_intern("__given_keyword_args__"), 2, binding, Qfalse);
}

static VALUE
ruby_given_keyword_args_with_rest(VALUE self)
{
    VALUE binding = rb_binding_new();
    return rb_funcall(self, rb_intern("__given_keyword_args__"), 2, binding, Qtrue);
}

void
Init_given_keyword_args(void)
{
    VALUE module = rb_define_module("GivenKeywordArgs");
    rb_define_private_method(module, "given_keyword_args", ruby_given_keyword_args, 0);
    rb_define_private_method(module, "given_keyword_args_with_rest", ruby_given_keyword_args_with_rest, 0);
}
