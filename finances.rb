class Finances

  def initialize(currency)
    @currency = currency
  end
  
  def ask_for_input
    puts "How many number of lessons do you have worth 330??"
    cost_330 = gets

    puts "How many number of lessons do you have worth 360??"
    cost_360 = gets

    puts "How many number of lessons do you have worth 380??"
    cost_380 = gets

    puts "How many number of lessons do you have worth 400??"
    cost_400 = gets

    puts "How many number of lessons do you have worth 420??"
    cost_420 = gets
 
    puts "How many number of lessons do you have worth 440??"
    cost_440 = gets
    

    result = (cost_330.to_i * 330) + (cost_360.to_i * 360) + (cost_380.to_i * 380) + (cost_400.to_i * 400) + (cost_420.to_i * 420) + (cost_440.to_i * 440) 
   
    return result
  end

  def calculate
    salary = ask_for_input
    converted = salary * @currency
    puts "Expected salart is " + converted.to_s + " AMD"
  end

end

puts "What is the current exchange rate?"
exchange_rate = gets

skyeng = Finances.new(exchange_rate.to_i)

skyeng.calculate


