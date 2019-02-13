def consolidate_cart(cart)
  new_cart = {}
  cart.each do |cart_hash|
    cart_hash.each do |veg, data|
      new_cart[veg] ||= {}
      new_cart[veg][:count] += 1
      new_cart[veg] << data
    end
  end  
end

end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
