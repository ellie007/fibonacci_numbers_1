require "fibonacci_number"

describe FibNumSeqSum do

  let(:test) { FibNumSeqSum.new }

  it "should generate the Fib sequence up to 10" do
    test.create_seq_algo(10).should == [1, 2, 3, 5, 8]
  end

  it "should generate the Fib sequence up to 25" do
    test.create_seq_algo(25).should == [1, 2, 3, 5, 8, 13, 21]
  end


  it "should return all even values in the array" do
    test.find_even_values([2, 8]).should == [2, 8]
  end

  it "should return all even values in the array" do
    test.find_even_values([2, 8, 34, 45]).should == [2, 8, 34]
  end


  it "should generate the even values of the Fib sequence up to 10" do
    test.create_even_fib_seq(10).should == [2, 8]
  end


  it "should sum the even values" do
    test.sum_even_fib_seq([2, 8, 34]).should == 44
  end


  it "should test project euler operation up to 4 million" do
    test.project_euler(4000000).should == 4613732
  end

  # it '' do
  #   car1 = Car.new
  #   car2 = Car.new

  #   puts "Car 1: #{ car1.get_other_variable }"
  #   puts "Car 2: #{ car2.get_other_variable }"

  #   #car1.change_id "banana"
  #   car1.change_variable [ 88 ]

  #   puts "Car 1: #{ car1.get_other_variable }"
  #   puts "Car 2: #{ car2.get_other_variable }"
  # end

end

