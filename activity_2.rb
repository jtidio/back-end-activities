class Confection
    def prepare
        "Baking at 350 degrees for 25 minutes."
    end
end

class BananaCake < Confection
end

class Cupcake < Confection
    def prepare
        super + "\nApplying frosting."
    end
end

cupcake = Cupcake.new
puts "This is the recipe for cupcakes:\n#{cupcake.prepare}\n"
bananana = BananaCake.new
puts "\nThis is the recipe for banana cakes:\n#{bananana.prepare}\n"

#Encapsulation
class Pricing
    def initialize(id, item, price)
        @item_id = id
        @item_name = item
        @item_price = price
    end

    def item_details()
        puts "Item id: #{@item_id}\n"
        puts "Item: #{@item_name}\n"
        puts "Price: #{@item_price}\n"
    end
end

item1 = Pricing.new("1212", "Close Up", "₱43.49")
item2 = Pricing.new("2109", "Domex", "₱143.29")

item1.item_details()
item2.item_details()

#Abstraction
class Physics
    def initialize (initialPosition, finalPosition, timeTaken)
        @initial_position = initialPosition
        @final_position = finalPosition
        @time_taken = timeTaken
    end

    def calculations
        puts "The velocity of the object is #{velocityCalculation.to_f} m/s\n"
    end

    private

    def velocityCalculation
        (@final_position - @initial_position)/@time_taken
    end
end

calc1 = Physics.new(0,19,2)
calc1.calculations

calc2 = Physics.new(3,20,5)
calc2.calculations


#PolymorphismbyInheritance
class RunCode
    def run 
        raise NotImplementedError, 'You must declare language'
    end
end

class C < RunCode
    def run
        puts "Running code in C"
    end
end

class Python < RunCode
    def run
        puts "Running code in Python"
    end
end

puts "C Language\n"
CCode = C.new
CCode.run

puts "Python Language\n"
PythonCode = Python.new
PythonCode.run

#PolymorphismbyDuckTyping
class C
    def run
        puts "Running code in C\n"
    end
end

class Python
    def run
        puts "Running code in Python\n"
    end
end

class RunCode
    def run(language)
        language.run
    end
end

run_code = RunCode.new
CCode2 = C.new
run_code.run(CCode2)

PythonCode2 = Python.new
run_code.run(PythonCode2)