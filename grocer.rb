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

def apply_coupons(cart, coupons)
  new_item = {}
  coupons.each do |coupon_hash|
    cart.each do |veg, data|
      if veg == coupon_hash[:item] && data[:count] >= coupon_hash[:num]
        data[:count] = data[:count] - coupon_hash[:num]

        new_name = coupon_hash[:item] + " W/COUPON"
        new_item[new_name] = { 
          :price => coupon_hash[:cost],
          :clearance => data[:clearence],
          :count => 1 
          
        }
      end
    end
  end
  cart.merge(new_item)
end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
