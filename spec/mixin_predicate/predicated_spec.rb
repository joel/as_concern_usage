# frozen_string_literal: true

module MixinPredicate
  RSpec.describe Predicate do
    subject(:foo) do
      Class.new do
        include MixinPredicate::Predicate

        foo
      end
    end

    describe "#mixin_predicate" do
      context "when all is good" do
        let(:input) { "foo" }
        let(:result) { "foo" }

        it do
          expect(foo).to respond_to(:foo)
        end

        it do
          expect(foo.new).to respond_to(:bar)
        end
      end
    end
  end
end
