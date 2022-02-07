# frozen_string_literal: true

module MixinPredicate
  RSpec.describe Predicate do
    subject(:instance) do
      Class.new do
        include MixinPredicate::Predicate::Bar

        def name
          "Anonymous Class Predicate"
        end
      end.new
    end

    describe "#mixin_predicate" do
      context "when all is good" do
        it do
          expect(instance).to respond_to(:foo)
        end

        it do
          expect(instance.foo).to eql("foo")
        end

        it do
          expect(instance).to respond_to(:bar)
        end

        it do
          expect(instance.bar).to eql("bar")
        end
      end
    end
  end
end
