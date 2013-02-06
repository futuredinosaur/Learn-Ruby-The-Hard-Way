# Methods/Functions 
# close -- Closes the file. Like File->Save..in your editor.
# read -- Reads the contents of the file, you can assign the result to a variable.
# readline -- Reads just one line of a text file.
# truncate -- Empties the file, watch out if you care about the file.
# write(stuff) -- Writes stuff to the file

filename = ARGV.first # ruby ex16.rb test.txt
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets # waiting for user input

puts "Opening the file..."
target = File.open(filename, 'w') # created test.txt in write mode

puts "Truncating the file.  Goodbye!"
target.truncate(target.size) # erases the file

puts "Now I'm going to ask you for three lines."

print "Line 1: "; line1 = STDIN.gets.chomp()
print "Line 2: "; line2 = STDIN.gets.chomp()
print "Line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write("#{line1}\n#{line2}\n#{line3}") # wrote lines 1-3 with a new line via "\n" escape sequence

puts "And finally, we close it."
target.close() # closes the file