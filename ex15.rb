filename = ARGV.first # obtains the filename

prompt = "> " 
txt = File.open(filename) # opens the file

puts "Here's your file: #{filename}"
puts txt.read() # reads the file

puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp() # asks user to input the filename again

txt_again = File.open(file_again) # opens the file

puts txt_again.read() # then reads the file
