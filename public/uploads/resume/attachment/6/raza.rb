# # Let's create a base class to extend from. 
# # This class contains the code generator methods that we'll be using.
# class Base
#   def self.getset(*args)
#     print "lol getset: ",args, "\nend lol \n"
#     args.each do |field|
#       getter(field)
#       setter(field)
#     end
#   end

#   def self.getter(*args)
#     print "lol getter: ",args, "\nend lol \n"
#     args.each do |field|
#       define_method("get#{field}") do
#         instance_variable_get("@#{field}")
#       end
#     end
#   end

#   def self.setter(*args)
#     args.each do |field|
#       define_method("set#{field}") do |value|
#         instance_variable_set("@#{field}", value)
#       end
#     end
#   end
# end

# # Now let's create a class and utilize our getset generator
# class Alpaca < Base
#   # We'll create accessors for :name and :age
#   getset :name, :age

#   def initialize(name, age)
#     self.setname(name)
#     self.setage(age)
#   end
# end

# buddy = Alpaca.new("Buddy", 24)
# # Let's call our methods and make sure they return what we expect
# # puts buddy.getname # Buddy
# # puts buddy.getage # 24

# # # Let's see if our object responds to the new methods we created
# # puts buddy.respond_to?(:getname) # true
# # puts buddy.respond_to?(:setname) # true

# buddy.setname("3lol")
# puts buddy.getname


class Foo
  # LIST = (a b c)
  LIST = ["a"]
  class << self
    LIST.each do |x|
      define_method(x) do |arg|
        return arg+5
      end
    end
  end
end

puts Foo.a(10)