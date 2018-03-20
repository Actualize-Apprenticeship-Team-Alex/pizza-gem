class Pizza
  # veggies: ["Artichoke Hearts", "Avocado", "Broccoli", "Capers", "Capicolla", "Cherry Tomatoes", "Eggplant", "Green Peppers", "Jalapeno Peppers", "Mushrooms", "Olives", "Onions", "Pineapple", "Red Onions", "Red Peppers", "Roasted Garlic", "Spinach", "Zucchini"]
  # garnishes: ["Basil", "Bay Leaf", "Dried Chili", "Chives", "Cilantro", "Garlic", "Oregano", "Parsley", "Pepper"]
  # proteins: ["Anchovies", "Bacon", "Beef", "Chorizo", "Ham", "Meatballs", "Pepperoni", "Proscuitto", "Sausage"]

  TOPPINGS = ["Anchovies", "Bacon", "Beef", "Chorizo", "Ham", "Meatballs", "Pepperoni", "Proscuitto", "Sausage", "Basil", "Bay Leaf", "Dried Chili", "Chives", "Cilantro", "Garlic", "Oregano", "Parsley", "Pepper", "Artichoke Hearts", "Avocado", "Broccoli", "Capers", "Capicolla", "Cherry Tomatoes", "Eggplant", "Green Peppers", "Jalapeno Peppers", "Mushrooms", "Olives", "Onions", "Pineapple", "Red Onions", "Red Peppers", "Roasted Garlic", "Spinach", "Zucchini"]
  CRUSTS = ["Deep Dish", "Double Decker", "Pan", "Thin Crust", "Hand Tossed", "Ultra Thin Crust"]
  CHEESES = ["Cheddar", "Feta", "Goat Cheese", "Monetery Jack", "Parmesan", "Provolone", "Ricotta"]
  SAUCES = ["Tomato", "Marinera", "White Sauce", "Pesto"]

  # def initialize

  # end

  def self.generate
    Pizza.new
  end

  def toppings(quantity=2)
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