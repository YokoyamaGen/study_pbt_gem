require 'rails_helper'

RSpec.describe CalculatorService do
  describe '.triple' do
    context 'when property-based testing' do
      it do
        Pbt.assert(verbose: true) do
          # 入力値が整数であることを指定
          Pbt.property(Pbt.integer) do |number|
            p "================="
            p number
            p "================="

            result = described_class.triple(number)

            p "=====result============"
            p result
            p "================="

            # 結果が3の倍数であることを確認
            expect(result).to eq number * 3
          end
        end
      end
    end
  end
end