def run_welcome
	puts "Welcome to your Calculator"
	puts "   "
	first_number
end

def first_number
	puts "What is the first number?"
	@input_num1 = gets.to_f
	operator
end 

def operator
	continue = false
	while continue == false
		operator_array = ['+', '-', '*', '/']
		puts "What is the Operator or Modifier?"
		@input_oper = gets.strip
		continue = operator_array.include?(@input_oper)
		if continue == true
			second_number
		else 
			puts "TRY AGAIN! Please select a valid operation."
		end	
	end
end

#asking for second number
def second_number
	puts "What is the second number?"
	@input_num2 = gets.to_f
	oper_function
end


def oper_function
		if @input_oper == "+"
			puts "#{(@input_num1) + (@input_num2)}"

		elsif @input_oper == "-"
			puts "#{(@input_num1) - (@input_num2)}"

		elsif @input_oper == "*"
			puts "#{(@input_num1) * (@input_num2)}"

		elsif @input_oper == "/" && @input_num2 == 0
			puts "Can't divide by 0, please select a new number"
			second_number
		elsif @input_oper == "/" 
			puts "#{(@input_num1) / (@input_num2)}"
		end
	exit_calc
end

def exit_calc
	puts "   "
	puts "Would you like to work on a new problem (y/n)?"
	exit_input = gets.strip.downcase
	case exit_input
		when "y" 
		 first_number
		else puts "Goodbye!"
		exit (0)
	end 
end

run_welcome