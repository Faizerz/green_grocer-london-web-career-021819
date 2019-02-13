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
  couponed_items= {}
  coupons.each do |coupon_hash|
    cart.each do |name, item_hash|
      if name == coupon_hash[:item] && item_hash[:count] >= coupon_hash[:num]
        item_hash[:count] = item_hash[:count] - coupon_hash[:num]
        new_name = coupon_hash[:item] + " w/coupon"
        couponed_items[new_name] = { :price => coupon_hash[:cost], 
                                     :count => 1, 
                                     :clearance => item_hash[:clearance] }
      end 
    end
  end
  cart.merge(couponed_items)
end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
