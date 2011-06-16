!SLIDE duck_typing
# Duck Typing #
If it walks like a duck, And talks like a duck,Then we can treat it like a duck. (who cares what it really is)
* In Ruby, we rely less on the type (or class) of an object and more on its capabilities.
* Duck Typing means an object type is defined by what it can do, not by what it is.

	@@@ ruby
	class Dock
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