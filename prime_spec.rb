require_relative 'prime_model'

describe "Prime" do

  let (:test) {Prime.new(columns:10,rows:10)}
  let (:test_array1) {[2,3,5,7,11]}
  let (:test_array2) {[2,3,5,7,11,14]}

  describe "Prime#is_prime?" do
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

  describe "Prime#fill_in_grid" do
    before(:each) do
      test.find_primes
      test.set_top_row
      test.set_first_column
      test.fill_in_grid
    end


    it 'should fill in the grids with the proper multiples' do
      expect(test.matrix[1][1]).to eq(4)
    end

    it 'should fill in the grids with the proper multiples' do
      expect(test.matrix[9][9]).to eq(529)
    end

    describe "Prime#set_first_column" do
      it 'should fill this first column with primes' do
        expect(test.matrix.transpose[0]).to eq([0, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
      end
    end
  end
end