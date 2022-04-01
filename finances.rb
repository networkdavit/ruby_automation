class Finances

  def initialize(currency)
    @currency = currency
  end
  
  def ask_for_input
    print "How many number of lessons do you have worth 330?: "
    cost_330 = gets

    print "How many number of lessons do you have worth 360?: "
    cost_360 = gets

    print "How many number of lessons do you have worth 380?: "
    cost_380 = gets

    print "How many number of lessons do you have worth 400?: "
    cost_400 = gets

    print "How many number of lessons do you have worth 420?: "
    cost_420 = gets
 
    print "How many number of lessons do you have worth 440?: "
    cost_440 = gets
    

    result = (cost_330.to_i * 330) + (cost_360.to_i * 360) + (cost_380.to_i * 380) + (cost_400.to_i * 400) + (cost_420.to_i * 420) + (cost_440.to_i * 440) 
   
    return result
  end

  def calculate
    salary = ask_for_input
    print "Should we add this to the current amount earned?: Y/n "
    answer = gets.chomp
    
    if answer == "y"
      print "How much do you have?: "
      current_earned_amount = gets
      converted_added = (salary.to_i + current_earned_amount.to_i) * @currency
      puts "Expected salary is " + converted_added.to_s + " AMD"
    else
      converted_not_added = salary * @currency
      puts "Expected salary is " + converted_not_added.to_s + " AMD"
    end

  end

end

print "What is the current exchange rate?: "
exchange_rate = gets

skyeng = Finances.new(exchange_rate.to_i)

skyeng.calculate


