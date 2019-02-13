def consolidate_cart(cart)
  new_cart = {}
  cart.each do |cart_hash|
    cart_hash.each do |veg, data|
      if new_cart[veg]
      else
        new_cart[veg] = data
        new_cart[veg][:count] = 0
      end
      new_cart[veg][:count] += 1
    end
  end
  new_cart
end


# def apply_coupons(cart, coupons)
#   # code here
# end

# def apply_clearance(cart)
#   # code here
# end

# def checkout(cart, coupons)
#   # code here
# end
