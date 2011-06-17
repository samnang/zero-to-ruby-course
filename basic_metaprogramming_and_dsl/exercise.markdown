## Exercise ##
1. Implement a class macro **default_attr_accessor** to able to give accessor with a default value.

		class Person
  	  	  default_attr_accessor :name
  	  	  default_attr_accessor :age, :default => 18
  	  	  default_attr_accessor :created_at, :updated_at, :default => Date.today
		end

		person = Person.new
		p person

		person.age = 20
		p person

		p Person.new

2. Write **DataRecord** class that supports multiple data source:

		| Id | Name  | Grade |
		| 1  | Dara  | D	 |
		| 2  | David | B     |
		| 3  | Tom 	 | A	 |
		| 4  | Kety  | C	 |
	
		DataRecord.load("sample.csv")
	
		student = DataRecord.find_by_name("Dara")
		student.name # => "Dara"
		student.id  # => "1"
		student.grade # => "D"
	
		| code | full_name | Grade |
		| 1    | Dara  	   | D	   |
		| 2    | David 	   | B     |
		| 3    | Tom 	   | A	   |
		| 4    | Kety  	   | C	   |
	
		DataRecord.load("sample1.csv")
	
		student = DataRecord.find_by_code(1)
		student.name # => "Dara"
		student.id  # => "1"
		student.grade # => "D"
		
3. Write a XML Generator:  
	Input:
	
		html do
		  body do
		    content "Let's start!"
		    form :action => '/page', :method => 'post' do
		      input :type => 'text', :name => 'str', :maxlength => 3, :size => 3
		      input :type => 'submit', :value => 'page'
		    end
		  end
		end
		
	Output:
		
		<html>
		  <body>
		    Let's start!
		    <form action='/page' method='post'>
		      <input type='text' maxlength='3' name='str' size='3'/>
		      <input type='submit' value='page'/>
		    </form>
		  </body>
		</html>
	
	Follow the steps from <https://github.com/ashbb/ruby_metaprogramming_study_note/blob/master/notes/XML_generator.md>