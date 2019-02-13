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

# def apply_coupons(cart, coupons)
#   new_item = {}
#   coupons.each do |coupon_hash|
#     cart.each do |veg, data|
#       if veg == coupon_hash[:item] && data[:count] > coupon_hash[:num]
#         data[:count] = data[:count] - coupon_hash[:num]

#         new_name = coupon_hash[:item] + " W/COUPON"
#         new_item[new_name] = {
#           :price => coupon_hash[:cost],
#           :clearance => data[:clearence],
#           :count => 1
#         }
#       else
#         return cart
#       end
#     end
#   end

#   cart.merge(new_item)
# end


#My method above wasn't as good as this method
def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    name = coupon[:item]
    if cart[name] && cart[name][:count] >= coupon[:num]
      if cart["#{name} W/COUPON"]
        cart["#{name} W/COUPON"][:count] += 1
      else
        cart["#{name} W/COUPON"] = {:count => 1, :price => coupon[:cost]}
        cart["#{name} W/COUPON"][:clearance] = cart[name][:clearance]
      end
      cart[name][:count] -= coupon[:num]
    end
  end
  cart
end


def apply_clearance(cart)
  cart.each do |item, hash|
    if hash[:clearence]
      new_price = hash[:price]*0.80
      hash[:price] = new_price
    end
  end
  cart
end

def checkout(cart, coupons)
  # code here
end
