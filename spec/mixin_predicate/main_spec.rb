# frozen_string_literal: true

module MixinPredicate
  RSpec.describe Main do
    subject(:foo) { described_class.new }
    describe "#mixin_predicate" do
      context "when all is good" do
        let(:input) { "foo" }
        let(:result) { "foo" }

        it do
          expect(foo.mixin_predicate(input)).to eql(result)
        end
      end
    end
  end
end
