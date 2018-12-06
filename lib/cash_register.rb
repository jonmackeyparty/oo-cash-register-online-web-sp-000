class CashRegister
  attr_accessor(:total, :discount, :items, :running_total)

  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = [ ]
    @running_total = [ ]
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @total = @total + price*quantity
    @items << [title] * quantity
    @items.flatten!
    @running_total << price*quantity
  end
  
  def apply_discount
  
  
  end
  
  def void_last_transaction
    @total = @total - @running_total.last
  end
  
  def items
    @items
  end
  
end