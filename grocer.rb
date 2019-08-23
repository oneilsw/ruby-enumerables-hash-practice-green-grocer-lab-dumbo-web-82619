require "pry"
def consolidate_cart(cart)
  hash ={}
  
  cart.each do |item_hash| 
     # binding.pry 
      name = item_hash.keys[0]
      values = item_hash.values[0]
      if hash[name]
        hash[name][:count] += 1 
      else 
        hash[name]=values 
        hash[name][:count]=1 
      end 
  end
  hash 
end

def apply_coupons(cart, coupons)
  cart.each do ||
  end 
end 

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
 