<!SLIDE ruby_core subsection transition=scrollUp>
# Ruby Core #

<!SLIDE Simplicity transition=scrollUp>
# Simplicity #

	@@@ ruby
    5.times { print "Ruby! "}
	print "Ruby! " * 5
	
	100.next
	'a'.next
	
	1.upto(5) {|x| puts x }
	5.downto(1) { |x| puts x }

<!SLIDE everything_is_object transition=scrollUp>
# Almost everything in Ruby is an object #
	
	@@@ ruby
    100.next     #=> 101
	'a'.next     #=> "b"

	100.class    #=> Fixnum
	"Ruby".class #=> String
	[].class     #=> Array
	{}.class     #=> Hash

	5.times { print "Ruby! " }
	#=> Ruby! Ruby! Ruby! Ruby! Ruby!

	5 + 5
	5.+(5) # both are the same

<!SLIDE array transition=scrollUp>	
# Array #

	@@@ ruby
    numbers = ['zero', 'one', 'two', 3]
	numbers[0]      #=> 'zero'
	numbers.first   #=> 'zero'
	numbers.last    #=> 3
	numbers[-1]     #=> 3

	list = []
	list << 'first'
	list << 'bar'
	list.pop # can be used as a stack

<!SLIDE hash transition=scrollUp>
# Hash #

	@@@ ruby
    profile = {
	  :name => "Samnang",
	  :age => 100 #Who knows :-)
	}

	profile[:name]
	profile[:age]

<!SLIDE range transition=scrollUp>
# Range #

    @@@ ruby
    range = 1..5
	range.to_a        #=> [1, 2, 3, 4, 5]

	range = 'a'..'z'
	range.to_a # array of strings from a to z

	range = 1...5
	range.to_a        #=> [1, 2, 3, 4]

	range.include? 2  #=> true

	array = [1, 2, 3, 4]
	array[0..2]       #=> [1, 2, 3]
	array[1...-1]     #=> [2, 3]

<!SLIDE conditional_and_iterators transition=scrollUp>	
# Conditionals and Iterators #

    @@@ ruby
    if something_true?
	    do_something
	else
	    do_another_thing
	end

	puts "I'll love Ruby" if not absence_today?
	puts "I'll love Ruby" unless absence_today?

	%w{Ruby HTML5 CSS3}.each do |lang|
	    puts "#{lang} is so cool!"
	end
	
<!SLIDE ruby_core_and_stdlib bullets center transition=scrollUp>
# Ruby package #
.notes see some classes on both ruby core and standard library

### Ruby Core Classes ###
(String, Fixnum, Array, ...)
### Ruby Standard Library ###
(CSV, ERB, Webrick, ...)

<!SLIDE exercise title transition=scrollUp>

# Exercise #