desc "Calculate monthly loan payments"
task :loan_payment do
  path_to_text = Rails.root + "lib/input_files/loan_payment_apr.txt"
  loan_apr = open(path_to_text).read.chomp.to_f
  ap "APR: " + loan_apr.to_s
  
  path_to_text_1 = Rails.root + "lib/input_files/loan_payment_years.txt"
  loan_years = open(path_to_text_1).read.chomp.to_i
  ap "Number of Years: " + loan_years.to_s
  
  path_to_text_2 = Rails.root + "lib/input_files/loan_payment_principal.txt"
  loan_principal = open(path_to_text_2).read.chomp.to_f
  ap "Principal: " + "$" + loan_principal.to_s
  
  loan_payment = ((loan_apr/1200)*loan_principal)/(1-(1+(loan_apr/1200))**(-1*loan_years*12))
  ap "Monthly Payment: $" + (loan_payment.round(2)).to_s
  
end
