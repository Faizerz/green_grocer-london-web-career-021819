def consolidate_cart(cart)
  new_cart = {}
  cart.each do |cart_hash|
    cart_hash.each do |veg, data|
      if !new_cart[veg]
        new_cart[veg] = data
        new_cart[veg][:count] = 0
      end
      new_cart[veg][:count] += 1
    end
  end
  new_cart
end

def apply_coupons(cart, coupon)
  new_item = {}
  cart.each do |veg, data|
    if veg == coupon[:item]
      data[:count] = data[:count] - coupon[:num]

      new_item["#{coupon[:item]} W/COUPON"] = {
        :price => coupon[:cost],
        :clearance => data[:clearence],
        :count => 1
      }
    end
  end
  cart.merge(new_item)
end

# def apply_clearance(cart)
#   # code here
# end

# def checkout(cart, coupons)
#   # code here
# end
