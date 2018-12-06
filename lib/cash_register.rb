class CashRegister
  attr_accessor(:total, :discount, :items)

  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = [ ]
  end
  
  def total
    self.total
  end
  
  def add_item(title, price, quantity = 1)
    self.total = self.total + price*quantity
    self.items << title
  end
  
  
  def items
    self.items
  end
end