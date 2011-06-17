# http://blog.rubybestpractices.com/posts/gregory/030-issue-1-method-lookup.html

module W
 def foo
   "- Mixed in method defined by W\n" + super
 end
end

module X
 def foo
   "- Mixed in method defined by X\n" + super
 end
end

module Y
 def foo
   "- Mixed in method defined by Y\n" + super
 end
end

module Z
 def foo
   "- Mixed in method defined by Z\n" + super
 end
end

class A
 def foo
   "- Instance method defined by A\n"
 end
end

class B < A
 include W
 include X

 def foo
   "- Instance method defined by B\n" + super
 end
end

object = B.new
object.extend(Y)
object.extend(Z)

def object.foo
 "- Method defined directly on an instance of B\n" + super
end

puts object.foo