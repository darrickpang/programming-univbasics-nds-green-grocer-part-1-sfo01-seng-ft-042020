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
 newarr = []
 x = 0 
 
 while x < cart.length do 
   new_item = find_item_by_name_in_collection(cart[x][:item], newarr)
   if(new_item === nil)
     new_item = {
       :item => cart[x][:item],
       :price => cart[x][:price],
       :clearance => cart[x][:clearance],
       :count => 1
     }
     newarr.push(new_item)
   else 
     new_item[:count] += 1
   end 
   x += 1 
 end 
 return newarr 
end


  