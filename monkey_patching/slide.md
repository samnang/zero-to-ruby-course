<!SLIDE monkey_patching bullets>
# Monkey Patching #

* Objects and class are open:  
  add / override method to object even at Runtime!
* Might be dangerous or break some stuff:  
  but its awesome

<!SLIDE monkey_patching small>

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