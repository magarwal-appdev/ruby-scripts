desc "Calculate mode"
task :mode do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================
  max_count = 0
  mode = nil
  numbers.each do |num|
    if numbers.count(num) > max_count
      max_count = numbers.count(num)
      mode = num
    end
  end
  
  ap "Sorted Numbers: "
  ap numbers.sort
  ap "Mode: " + mode.to_s
  # MODE
  # ====

  # To find the mode of a set of numbers, I follow an approach similar to the one for minimum and maximum above.
end
