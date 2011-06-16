!SLIDE classes_and_modules
# Classes #
	@@@ ruby
    class BankAccount
	  attr_accessor :name, :account_no
	  attr_reader :balance

	  def initialize(name)
	    @name = name
	    @balance = 0
	  end

	  def deposit(amount)
	    @balance += amount
	  end

	  def withdraw(amount)
	    @balance += amount
	  end

	  def active?
	    #is account active or not
	  end
	end

	account = BankAccount.new("Samnang")

# Mixins #

    @@@ ruby
    module A
	  def say_hello
	    puts "Hello"
	  end
	end

	module B
	  def say_goodbye
	    puts "Goodbye"
	  end
	end

	class C
	  include A
	  include B
	end

	obj = C.new
	obj.say_hello
	obj.say_goodbye
	
# Namespaces #

    @@@ ruby
	module XML
	  class Parser
	    # ...
	  end
	end
	
	module PDF
	  class Parser
	    # ...
	  end
	end
	
	XML::Parser
	PDF::Parser
	
# Singleton Methods
    @@@ ruby
	animal = "cat"
	another_aminal = "dog"
	
	def animal.speak
	  puts "The #{self} says miaow"
	end
	
	an_array.speak # The cat says miaow
	another_animal.speak # NoMethodError: undefined method `speak' for "dog":String
	
# Singleton classes/Eigenclasses/Metaclasses/Virtual Classes/Ghost classes
* It's an anonymous class that you can't instantiate object from it
* It's hidden
* It is created automatically by the interpreter when you refer to it at the first time
* Except from those above, it works like normal classes
  Picture of the singleton class



