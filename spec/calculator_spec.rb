require 'calculator'

describe Calculator do
  it 'adds 1 and 2 and returns 3' do
    calc = Calculator.new
    expect(calc.add(1,2)).to eq(3)
  end

  it 'adds 3 and 5 and returns 8' do
    calc = Calculator.new
    expect(calc.add(3,5)).to eq(8)
  end
  
end
