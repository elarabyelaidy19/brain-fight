https://www.hackerrank.com/challenges/bigger-is-greater/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen  


#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'biggerIsGreater' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING w as parameter.
#

def biggerIsGreater(w)
    pivot = nil
   largest_sufix = w.size - 1

  1.upto(w.size - 1) do |i|
    pivot = i - 1 if w[i] > w[i-1]
  end

  return 'no answer' unless pivot

  pivot.upto(w.size - 1) do |j|
    largest_sufix = j if w[j] > w[pivot]
  end

  w[pivot] = w[largest_sufix].tap { w[largest_sufix] = w[pivot] }

  w[0..pivot] + w[(pivot + 1)..-1].reverse
    # Write your code here

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

T = gets.strip.to_i

T.times do |t_itr|
    w = gets.chomp

    result = biggerIsGreater w

    fptr.write result
    fptr.write "\n"
end

fptr.close()
