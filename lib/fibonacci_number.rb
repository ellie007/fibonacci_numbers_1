class FibNumSeqSum

  def create_seq_algo(up_to)
    fibSeq = [1, 2]
    while fibSeq[-1] < up_to do
      value = fibSeq[-2] + fibSeq[-1]
      fibSeq << value
      new_fib_seq = fibSeq.take(fibSeq.size - 1)
    end
    new_fib_seq
  end

  def find_even_values(full_array)
    even_array = []
    full_array.each do |find_evens|
      if find_evens % 2 == 0
        even_array << find_evens
      end
    end
    even_array
  end

  def create_even_fib_seq(up_to)
     fib_seq = create_seq_algo(up_to)
     find_even_values(fib_seq)
  end

  def sum_even_fib_seq(even_array)
    sum = 0
    even_array.each do |add|
      sum += add
    end
    sum
  end

  def project_euler(up_to)
    even_array = create_even_fib_seq(up_to)
    sum_even_fib_seq(even_array)
  end

end



# class Car

#   ClassVariable = [5]

#   def initialize
#     @id = rand(1000)
#   end

#   def id
#     @id
#   end

#   def get_other_variable
#     ClassVariable
#   end

#   def change_variable new_value
#     ClassVariable << new_value
#   end

#   def change_id(new_value)
#     @id = new_value
#   end

# end
