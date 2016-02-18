#Welcome message
puts "Welcome to your Calculator"
puts "   "

#asking for the first number
def first_number
	puts "What is the first number?"
	@input_num1 = gets.to_f
#	if @input_num1
#	end	
end 

#requesting action about what function to perform
def operator
	continue = false
	while continue == false
	operator_array = ['+', '-', '*', '/']
	puts "What is the Operator or Modifier?"
	@input_oper = gets.strip
	continue = operator_array.include?(@input_oper)
		if continue == true
			@input_oper
		else puts "TRY AGAIN! Please select a valid operation."
		end	
	end
end

#asking for second number
def second_number
	puts "What is the second number?"
	@input_num2 = gets.to_f
end


#defining what each action does
def addition(input_num1, input_num2)
	@input_num1 + @input_num2
end

def	subtraction(input_num1, input_num2)
	@input_num1 - @input_num2
end

def multiplication(input_num1, input_num2)
	@input_num1 * @input_num2
end

def division(input_num1, input_num2)
	@input_num1 / @input_num2
end


#looping from the exit function
def  repeat
first_number

operator

second_number

oper_function

exit_calc
end

#exit strategy
def exit_calc
	puts "   "
	puts "Would you like to work on a new problem (y/n)?"
	exit_input = gets.strip.downcase
	case exit_input
	when "y" 
		 repeat
	else puts "Goodbye!"
	exit (0)
	end 
end

first_number
 
operator

second_number

def oper_function
	if @input_oper == "+"
		puts "#{addition(@input_num1, @input_num2)}"

	elsif @input_oper == "-"
		puts "#{subtraction(@input_num1, @input_num2)}"

	elsif @input_oper == "*"
		puts "#{multiplication(@input_num1, @input_num2)}"

	elsif @input_oper == "/" && @input_num2 == 0
		puts "Can't divide by 0"

	elsif @input_oper == "/" 
		puts "#{division(@input_num1, @input_num2)}"
	end
end

oper_function

exit_calc