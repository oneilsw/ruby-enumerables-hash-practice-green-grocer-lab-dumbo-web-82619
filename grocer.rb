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
   coupons.each do |coupon| 
    coupon.each do |key, value| 
      name = coupon[:item]  
    
      if cart[name] && cart[name][:count] >= coupon[:num] 
        if cart["#{name} W/COUPON"] 
          cart["#{name} W/COUPON"][:count] += 1 
        else 
          cart["#{name} W/COUPON"] = {:price => coupon[:cost], 
          :clearance => cart[name][:clearance], :count => 1} 
        end 
  
      cart[name][:count] -= coupon[:num] 
    end 
  end 
end 
  cart 
end 

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
 