require 'calculator'

describe Calculator do
  it 'adds 1 and 2 and returns 3' do
    calc = Calculator.new
    expect(calc.add(1,2)).to eq(3)
  end
end
