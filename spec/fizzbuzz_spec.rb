require "fizzbuzz"

describe "fizzbuzz" do
  it 'returns "fizz" when passed a multiple of 3' do
    expect(fizzbuzz(3)).to eq "fizz"
  end
  it 'return "buzz" when passed a multiple of 5' do
    expect(fizzbuzz(5)).to eq "buzz"
  end
  it 'return "fizzbuzz" when passed a multiple of 3 and 5' do
    expect(fizzbuzz(15)).to eq "fizzbuzz"
  end
  it 'return number itself passed if neither a multiple of 3 nor 5' do
    expect(fizzbuzz(7)).to eq 7
  end
end
