desc "Calculate standard deviation"
task :standard_deviation do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  mean = numbers.sum.to_f/ numbers.size.to_f
  diff_squared = 0
  variance = 0
  numbers.each do |num|
    diff = num - mean 
    diff_squared = diff_squared + diff**2
  end
  
  variance = diff_squared/numbers.length
  sd = Math.sqrt(variance)
  
  ap "Your numbers:"
  ap numbers
  ap "Standard Deviation: " + sd.to_s
  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # VARIANCE
  # ========
  # To find the variance of a set,
  #  - we find the mean of the set
  #  - for each number in the set,
  #    - we find the difference between the number and the mean
  #    - we square the difference
  #  - the variance is the mean of the squared differences

  # STANDARD DEVIATION
  # ==================
  # To find the standard deviation of a set,
  #  - take the square root of the variance

end
