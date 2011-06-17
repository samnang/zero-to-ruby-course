<!SLIDE self bullets>
# self (current object) #

* Read-only variable
* Has 2 significant roles in a running Ruby program:  
  **self** controls how Ruby finds instance variables.  
  **self** plays a vital role in method calling.

<!SLIDE method_lookup bullets>
# Understanding Ruby's method lookup #
* Find out what is **self** in current line of executing program
* Ruby methods are looked up in the following order:

<!SLIDE method_lookup_process bullets small>
# Ruby methods are looked up in the following order #
* Methods defined in the object's singleton class (i.e. the object itself)
* Modules mixed into the singleton class in reverse order of inclusion
* Methods defined by the object's class
* Modules included into the object's class in reverse order of inclusion
* Methods defined by the object's superclass.

<!SLIDE example>
# Example #
