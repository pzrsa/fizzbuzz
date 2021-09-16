require "fizzbuzz"

describe "fizzbuzz" do
  it 'returns "fizz" when passed a multiple of 3' do
    expect(fizzbuzz(rand(100) * 3)).to eq "fizz"
  end
  it 'return "buzz" when passed a multiple of 5' do
    expect(fizzbuzz(rand(100) * 5)).to eq "buzz"
  end
  it 'return "fizzbuzz" when passed a multiple of 3 and 5' do
    expect(fizzbuzz(rand(100) * 15)).to eq "fizzbuzz"
  end
end
