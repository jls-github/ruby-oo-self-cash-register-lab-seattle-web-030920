class CashRegister
  
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quanitity=1)
    @total += (price * quantity)
    @items.push(title)
    @transactions.push(price*quantity)
  end    
  
  def apply_discount
    if @discount == 0
      return "No discount"
    else 
      @total = @total * (discount/100)
      "discount successful"
    end
  end 
  
  def void_last_transaction
    @items = @items.pop
    @total -= @transactions[-1]
    @transactions = @transactions.pop
    @total
  end
    
end
  
