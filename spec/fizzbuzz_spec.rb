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

  it 'return "fizz" when passed a random multiple of 3' do
    num = 0
    until num.remainder(3).zero? && !num.remainder(5).zero?
      num = rand(1..1000) * 3
    end
    expect(fizzbuzz(num)).to eq "fizz"
  end

  it 'return "buzz" when passed a random multiple of 5' do
    num = 0
    until num.remainder(5).zero? && !num.remainder(3).zero?
      num = rand(1..1000) * 5
    end
    expect(fizzbuzz(num)).to eq "buzz"
  end

  it 'return "fizzbuzz" when passed a random multiple of 3 and 5' do
    expect(fizzbuzz(rand(1000) * 15)).to eq "fizzbuzz"
  end

  it 'return number itself when passed a random number that is neither a multiple of 3 nor 5' do
    num = 0
    while num.remainder(3).zero? || num.remainder(5).zero?
      num = rand(1..1000)
    end
    expect(fizzbuzz(num)).to eq num
  end
end
