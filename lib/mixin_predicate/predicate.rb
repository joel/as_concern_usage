# frozen_string_literal: true

require "active_support/concern"

module MixinPredicate
  module Predicate
    extend ActiveSupport::Concern

    class_methods do
      def foo
        mod = MixinPredicate::Predicate::Foo
        include mod
      end
    end

    module Foo
      def bar
        puts("foo::bar")
      end
    end
  end
end
