require 'pry'

def find_item_by_name_in_collection(name, collection)
collection.each_with_index do |item, index|
    if item[:item] == name 
      # binding.pry
      return item
    end 
end
return nil
end


def consolidate_cart(cart)
  new_cart = []
  cart.each do |item|
    found_item = find_item_by_name_in_collection(item[:item], new_cart)
     #binding.pry
      if found_item
         found_item[:count] += 1
      else
        item[:count] = 1
        new_cart << item
        
      end 
  end
end
  
