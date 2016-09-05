#include <ruby.h>

static VALUE
ruby_given_keyword_args(VALUE self)
{
    VALUE binding = rb_binding_new();
    return rb_funcall(self, rb_intern("__given_keyword_args__"), 1, binding);
}

void
Init_given_keyword_args(void)
{
    VALUE module = rb_define_module("GivenKeywordArgs");
    rb_define_private_method(module, "given_keyword_args", ruby_given_keyword_args, 0);
}
