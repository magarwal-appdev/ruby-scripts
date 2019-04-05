desc "Calculate word count statistics"
task :word_count do
  path_to_text = Rails.root + "lib/input_files/word_count_text.txt"
  text = open(path_to_text).read.chomp
  ap "File input: " + text
  character_count = text.length
  #character_count = path_to_text.size -- this works too!
  ap "Character count (with spaces): " + character_count.to_s
  
  text_without_spaces = text.gsub(/\s+/, "")
  ap "Character count (without spaces): " + text_without_spaces.length.to_s
 
  path_to_special_word = Rails.root + "lib/input_files/word_count_special_word.txt"
  special_word = open(path_to_special_word).read.chomp
  #special_word_len = special_word.length
  
  #line_len_original = text.length
  #line_len_removed = text.gsub(/story/,"").length
  
  occurrences_of_special = text.gsub(/[^a-z0-9\s]/i,"").downcase.split.count(special_word.downcase) 
  #(line_len_original - line_len_removed)/special_word_len
  ap "Occurrences of " + "'" + special_word + "': " + occurrences_of_special.to_s 
  
end
