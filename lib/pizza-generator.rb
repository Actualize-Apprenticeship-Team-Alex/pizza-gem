class Pizza

  TOPPINGS = ["Anchovies", "Bacon", "Beef", "Chorizo", "Ham", "Meatballs", "Pepperoni", "Proscuitto", "Sausage", "Basil", "Bay Leaf", "Dried Chili", "Chives", "Cilantro", "Garlic", "Oregano", "Parsley", "Pepper", "Artichoke Hearts", "Avocado", "Broccoli", "Capers", "Capicolla", "Cherry Tomatoes", "Eggplant", "Green Peppers", "Jalapeno Peppers", "Mushrooms", "Olives", "Onions", "Pineapple", "Red Onions", "Red Peppers", "Roasted Garlic", "Spinach", "Zucchini"]
  CRUSTS = ["Deep Dish", "Double Decker", "Pan", "Thin Crust", "Hand Tossed", "Ultra Thin Crust"]
  CHEESES = ["Cheddar", "Feta", "Goat Cheese", "Monetery Jack", "Parmesan", "Provolone", "Ricotta"]
  SAUCES = ["Tomato", "Marinera", "White Sauce", "Pesto"]

  attr_reader :toppings, :cheese, :sauce, :crust

  def initialize(toppings, cheese, sauce, crust)
    @toppings = toppings
    @cheese = cheese 
    @sauce = sauce
    @crust = crust
  end 

  def self.generate(quantity=2)
    
    toppings = Pizza.toppings(quantity)
    cheese = Pizza.cheese
    sauce = Pizza.sauce
    crust = Pizza.crust

    Pizza.new(toppings, cheese, sauce, crust)

  end

  def ingredients
    pizza_hash = {
      toppings: @toppings,
      cheese: @cheese,
      sauce: @sauce,
      crust: @crust
    }

    return pizza_hash
  end

  private 
  class << self

    def toppings(quantity)
      TOPPINGS.sample(quantity)
    end

    def cheese 
      CHEESES.sample
    end 

    def sauce 
      SAUCES.sample
    end

    def crust 
      CRUSTS.sample
    end
  end
end
