
class CashRegister
  attr_accessor :discount, :total, :items
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
    @last_transaction = price*quantity
  end

  def apply_discount
    @discount == 0 ? str = "There is no discount to apply." : ((@total *= (100-@discount)/100.0).round(2); str = "After the discount, the total comes to $#{@total}.")
  end

  def items
    @items
  end

  def void_last_transaction #this doesn't remove the item from the list, only subtracts from total

  end
end
