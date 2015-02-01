# Ruby Variables Homework
# See page 8 in Ruby Variables pdf


# puts "How much is the bill?"
# bill = gets.to_f * 100
# tip_percent = gets
# tip = bill * tip_percent
# total = bill + tip
# total = total / 100
# => puts "The bill is $#{sprintf('%.2f', total)}."


#Rewriting ^^ (DRY, class, OOP)

class TipCalculator
	attr_accessor :bill, :tip_percent, :num_people
	attr_reader :total, :my_share

#looking for method here not an attribute

def initialize
	get_the_bill
	get_the_tip_percent
	get_the_num_people
end

def start
	puts "="*10
	calculate_total_bill
	calculate_my_share
end


def calculate_total_bill
	tip = @bill * @tip_percent/100.00
	@total = @bill + tip
	puts "The total bill is $#{@total}"
end

def calculate_my_share
	@my_share = @total / @num_people
	puts "My share of the bill is $#{@total / @num_people}"
end

def get_the_bill
	puts "Please enter the bill amount:"
	@bill = gets.to_f
end
def get_the_tip_percent
	puts "Please enter the tip percent:"
	@tip_percent = gets.to_f
end

def get_the_num_people
	puts "Please enter a dinner party size:"
	@num_people = gets.to_f 
end
 

end
tip_calc = TipCalculator.new
tip_calc.start

