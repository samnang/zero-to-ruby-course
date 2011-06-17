<!SLIDE irb commandline incremental>
# Interactive Ruby Shell #

	$ irb
	ruby-1.9.2-p180 :001 > puts "I love Ruby!"
	I love Ruby!
	 => nil
	
<!SLIDE test_codes_in_irb>
.notes let students test codes in irb

	@@@ ruby
	"I love Ruby" * 5
	
	5.times { puts "I love Ruby" }
	
	[1, 3, "samnang"].last.capitalize

<!SLIDE configure_irb bullets>
# Configure and extend irb #

* __.irbrc__ irb's configration
* Auto completion
* Simple Mode
* plugins or gems(looksee, interactive_editor, ...)
* Customize by yourself

<!SLIDE using_documentation bullets>
# Using Ruby's documentation #
* <http://rubydoc.info/stdlib>
* <http://apidock.com/ruby/>
* ri (Ruby Index)
* irb (sometimes it helps as well)