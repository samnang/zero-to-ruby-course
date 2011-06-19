<!SLIDE duck_typing center transition=scrollUp>
# Duck Typing #
## If it walks like a duck, and talks like a duck,Then we can treat it like a duck. (who cares what it really is) ##
![Duck Typing](duck.jpeg)

<!SLIDE duck_typing bullets transition=scrollUp>
# Duck Typing #

* In Ruby, we rely less on the type (or class) of an object and more on its capabilities.  
* Duck Typing means an object type is defined by what it can do, not by what it is.

<!SLIDE duck_typing_sample_code small transition=scrollUp>

	@@@ ruby
	class Duck
	  def quack
		puts "Quack!"
	  end
	end
	
	class DuckRecording  
	  def quack  
	    play  
	  end  

	  def play  
	    'Quack!'  
	  end  
	end
	
	[Duck.new, DuckRecording.new].each { |a| a.quack }