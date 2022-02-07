# frozen_string_literal: true

require "active_support/concern"

module MixinPredicate
  module Predicate
    module Foo
      extend ActiveSupport::Concern

      def foo
        __method__.to_s
      end
    end

    module Bar
      extend ActiveSupport::Concern
      include Foo

      def bar
        __method__.to_s
      end
    end
  end
end
