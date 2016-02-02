require 'pry'
class SuperFizz

  def machine(number = 0)
    numbers = (number..1000).to_a
    output_array = numbers.map {|num| puts word_swapper(num)}

  end

  def word_swapper(num)
    output = ""
    output = "Super" if num%7 ==0
    output += "Fizz" if num%3 == 0
    output += "Buzz" if num%5 == 0
    output = num if output.empty?
    puts output
  end

end

if __FILE__ == $0
  sf = SuperFizz.new
  sf.machine
end
