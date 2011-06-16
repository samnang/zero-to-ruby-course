!SLIDE ruby_core
# Ruby Core #
## Simplicity ##

	@@@ ruby
    5.times { print "Ruby! "}
	print "Ruby! " * 5
	
	100.next
	'a'.next
	
	3.hours.from_now
	
	1.upto(5) {|x| puts x }
	5.downto(1) { |x| puts x }
	
## Almost everything in Ruby is an object	

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
	
## Array ##

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

## Hash ##

	@@@ ruby
    profile = {
	  :name => "Samnang",
	  :age => 100 #Who knows :-)
	}

	profile[:name]
	profile[:age]

## Range ##

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
	
## Conditionals and Iterators ##

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