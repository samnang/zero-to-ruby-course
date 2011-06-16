!SLIDE method_lookup
# self (current object) #
* Read-only variable
* Has two significant roles in a running Ruby program:
  - **self** controls how Ruby finds instance variables.
  - **self** plays a vital role in method calling.

# Understanding Ruby's method lookup #
* Find out what is **self** in current line of executing program
* Ruby methods are looked up in the following order:
  1) Methods defined in the object's singleton class (i.e. the object itself)
  2) Modules mixed into the singleton class in reverse order of inclusion
  3) Methods defined by the object's class
  4) Modules included into the object's class in reverse order of inclusion
  5) Methods defined by the object's superclass.

# method_missing #

