def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.count do |element|
    if(element[:item] == name)
      return element
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  newcart = {}
  cart.each do |element|
    element.each do |item, info|
      if newcart.include?(item)
        newcart[item][:count] += 1
      else
        newcart[item] = 
        newcart[item][:count] = 1
      end 
    end
  end
  return newcart
end


  