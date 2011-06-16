!SLIDE duck_typing
# Monkey Patching #

* Objects and class are open
  - Add / override method to object even at Runtime!
* Might be dangerous or break some stuff 
  - But its awesome


		@@@ ruby
		class Array
	  	  def second
		  	self[0]
	  	  end
		end
	
		[1, 2, 3].second # => 2

		require 'active_support/core_ext'
 	
		2.days.from_now # => 2011-06-20 14:14:11 +0700
		"person".pluralize # => "people"