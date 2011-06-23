class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy

def total_price
  line_items.to_a.sum { |item| item.total_price }
end

def total_items
  line_items.sum(:quantity)
end

#Checks whether our list of items already includes the product we're adding.
#If so, it increases the quantity, if not, it builds a new LineItem
def add_product(product_id)
  current_item = line_items.find_by_product_id(product_id)
  if current_item
    current_item.quantity += 1
  else
    current_item = line_items.build(:product_id => product_id)
  end
  current_item
end

end

