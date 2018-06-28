
class CashRegister
  @

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @total += price*quantity
    @items << item
  end

  def apply_discount
    @discount == 0 ? str = "There is no discount to apply." : (@total *= (100-@discount)/100; str = "After the discount, the total comes to $#{@total}.")
    
  end


end
