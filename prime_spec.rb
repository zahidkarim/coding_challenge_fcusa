require_relative 'prime_model'

describe "Prime#is_prime?" do
  let (:test) {Prime.new(columns:10,rows:10)}
  let (:test_array1) {[2,3,5,7,11]}
  let (:test_array2) {[2,3,5,7,11,14]}


  it 'should return true if it is a prime number' do
    array = []
    test_array1.each {|num| array << test.is_prime?(num)}
    expect(array.all?).to be true
  end

  it 'should return false if it is not a prime number' do
    array = []
    test_array2.each {|num| array << test.is_prime?(num)}
    expect(array.all?).to be false
  end


end