# INSTANCE METHODS: 
class Person
    def initialize(name)
        @name = name
    end

    def greet
        puts "Hello, my name is #{@name}"
    end
end

# to create an instance of the Person class which you can use to call the `greet` method:
john = Person.new('John')

# use dot notation when invoking the `greet` method on the `john` object we've just created: 
# john.greet()

# CLASS METHODS: 
class Car
    attr_accessor :make, :model
    
    def initialize(make, model)
      @make = make
      @model = model
    end
    
    # class method `create` which takes two args and returns a new instance of the `Car` class
    def self.create(make, model)
      Car.new(make, model)
    end
end
  
#  call the `create` class method on the `Car` class to create a new instance of a car
  my_car = Car.create("Toyota", "Camry")

#   use dot notation here too
#   puts my_car.make 
#   puts my_car.model 

# define a class Animal (w initialize method, class method and instance method)
# set instance variables name and breed for the animal object w/in the initialize method

class Animal
    # constructor method
    def initialize(name, breed)
        @name = name
        @breed = breed
    end

    #  class method that returns an array of strings representing dog breeds
    def self.all_breeds
        ["Labrador", "Chihuahua", "Golden Retriever", "Poodle"]
    end

    # instance method
    def bark
        puts "#{@name} is barking loudly!"
    end 

    # instance method that uses both vars
    def introduce
        puts "Hi, my name is #{@name} and I am a #{@breed}"
    end 

    dog = Animal.new("Max", "Labrador")
    puts dog.bark
    puts dog.introduce
end