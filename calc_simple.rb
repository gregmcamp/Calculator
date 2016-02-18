def calculator

	puts "   "
	puts "Welcome to your Calculator you mathematical moron."
	

	puts "   "
	puts "Please enter your first number"
	input_num1 = gets.to_f


	puts "   "
	puts "Please select your opertator (i.e. +, -, *, /)"
	input_oper = gets.strip


	puts"   "
	puts "Please enter your second number"
	input_num2 = gets.to_f
	puts "   "

	if input_oper == "+"
		puts (input_num1) + (input_num2)

		elsif input_oper == "-"
		puts (input_num1) - (input_num2)

		elsif input_oper == "/"
		puts (input_num1) / (input_num2)

		elsif input_oper == "*"
		puts (input_num1) * (input_num2)		
	end


puts "    "
puts "Would you like to continue (y/n)?"
exit_input = gets.strip.downcase

	if exit_input == "y"
		calculator
	else puts "Goodbye you dufus!"
	  exit (0)
	end		
end


calculator