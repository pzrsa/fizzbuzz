require "FizzBuzz"

describe "FizzBuzz" do
  it 'returns "Fizz" when passed a multiple of 3' do
    expect(FizzBuzz(3)).to eq "Fizz"
  end
  it 'return "Buzz" when passed a multiple of 5' do
    expect(FizzBuzz(5)).to eq "Buzz"
  end
  it 'return "FizzBuzz" when passed a multiple of 3 and 5' do
    expect(FizzBuzz(15)).to eq "FizzBuzz"
  end
  it "return number itself passed if neither a multiple of 3 nor 5" do
    expect(FizzBuzz(7)).to eq 7
  end

  it 'return "Fizz" when passed a random multiple of 3' do
    num = 0
    until num.remainder(3).zero? && !num.remainder(5).zero?
      num = rand(1..1000) * 3
    end
    expect(FizzBuzz(num)).to eq "Fizz"
  end

  it 'return "Buzz" when passed a random multiple of 5' do
    num = 0
    until num.remainder(5).zero? && !num.remainder(3).zero?
      num = rand(1..1000) * 5
    end
    expect(FizzBuzz(num)).to eq "Buzz"
  end

  it 'return "FizzBuzz" when passed a random multiple of 3 and 5' do
    expect(FizzBuzz(rand(1000) * 15)).to eq "FizzBuzz"
  end

  it "return number itself when passed a random number that is neither a multiple of 3 nor 5" do
    num = 0
    while num.remainder(3).zero? || num.remainder(5).zero?
      num = rand(1..1000)
    end
    expect(FizzBuzz(num)).to eq num
  end
end
