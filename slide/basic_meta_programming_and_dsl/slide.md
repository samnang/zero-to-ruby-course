!SLIDE metaprogramming
# Metaprogramming #

Code that writes code.

	@@@ ruby
	class Person
	  attr_accessor :name, :age
	end

Getters and Setters from Java style:
	
	@@@ ruby
	class Person
	  def name
		@name
	  end
	
	  def name=(value)
	 	@name = value
	  end
	
	  def age
	  	@age
	  end
	
	  def age=(value)
	 	@age = value
	  end
	end

Then change it into:
	
	@@@ ruby
	class Person
	  %w(name age).each do |method_name|
		define_method(method_name) do
		  instance_variable_get("@#{method_name}")
		end
		
		define_method("#{method_name}=") do |value|
		  instance_variable_set("@#{method_name}", value)
		end
	  end
	end
	

Finally

	@@@ ruby
	class Person
	  attr_accessor :name, :age
	end