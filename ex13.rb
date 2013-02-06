first, second, third = ARGV

puts "The script is called: #{$0}"
puts "What is your first variable?"
puts "Your first variable is: #{STDIN.gets.chomp()}"
puts "Ok, now what is your second variable?"
puts "Your second variable is: #{STDIN.gets.chomp()}"
puts "And finally, your third."
puts "Your third variable is: #{STDIN.gets.chomp()}"
