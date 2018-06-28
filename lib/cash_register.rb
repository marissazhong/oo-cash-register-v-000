
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
    @items
  end
end
