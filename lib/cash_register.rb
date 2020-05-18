require 'pry'


class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize (discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end
  
  def add_item title, price, quantity = 1
    @price = price
    @total += price * quantity
    if quantity > 1 
      n = 0 
      while n < quantity do 
        @items << title
        n += 1 
      end 
    else 
      @items << title
    end
    @last_transactio_price = price
    @last_transaction_item = title
  end
  
  def apply_discount
    if @discount > 0 
      discount = @discount/100.to_f
      @total = @total - (@total * discount.to_f)
      p "After the discount, the total comes to $#{@total.to_i}."
    else
      p "There is no discount to apply."
    end
  end
  
  
  def void_last_transaction
    if @items != nil 
      @items.quantity.times do @items.pop
      end
    elsif @item == nil
      @total == 0.0
    else
    @total -= @last_transactio_price
    end
  end
    
  
end
