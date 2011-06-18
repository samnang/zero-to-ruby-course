<!SLIDE basic_metaprogramming_and_dsl subsection transition=scrollUp>
# Basic metaprogramming and DSL #

<!SLIDE metaprogramming bullets transition=scrollUp>
# Metaprogramming #

* **Wikipedia**: "Metaprogramming is the writing of computer programs that write or manipulate other programs (or themselves) as their data, or that do part of the work at compile time that would otherwise be done at runtime."
* Code that writes code.

<!SLIDE metaprogramming_sample transition=scrollUp>
# Example #

	@@@ ruby
	class Person
	  attr_accessor :name, :age
	end

<!SLIDE metaprogramming_sample1 small transition=scrollUp>
# Getters and Setters from Java style #
	
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

<!SLIDE metaprogramming_sample2 small transition=scrollUp>
# Then change it into #
	
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
	

<!SLIDE metaprogramming_sample3 transition=scrollUp>

# Finally #

	@@@ ruby
	class Person
	  attr_accessor :name, :age
	end
	
<!SLIDE dsl center small transition=scrollUp>
# Domain Specific Language(DSL) #

## **Martin Fowler**: The basic idea of a domain specific language (DSL) is a computer language that's targeted to a particular kind of problem, rather than a general purpose language that's aimed at any kind of software problem. Domain specific languages have been talked about, and used for almost as long as computing has been done. ##

<!SLIDE two_kinds_of_dsl transition=scrollUp>
# Two kinds of DSL #

## Internal DSL
### use a host language to give the host language the feel of a particular language. ###

## External DSL 
### have their own custom syntax and you write a full parser to process them. ###

<!SLIDE internal_dsl bullets transition=scrollUp>
.notes demo some codes

# Examples of internal DSL #
* RSpec
* Capybara
* Sinatra
* ...

<!SLIDE external_dsl_bullets bullets transition=scrollUp>
# Examples of external DSL #
* Cucumber
* Haml
* SQL
* CSS
* ...

<!SLIDE exercise transition=scrollUp>
# Exercise #