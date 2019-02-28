class Dog < ActiveRecord::Base

end
# nheriting from models that inherit from ActiveRecord is a pattern for Single Table Inheritance.
# Instead of using STI (unless that's actually what you want), I would use a behavioral mixin pattern.
# Basically, make Animal a module and use include, so you'd have:
#
# module Animal; end
# and then
#
# class Kitty < ActiveRecord::Base
#   include Animal
# end
