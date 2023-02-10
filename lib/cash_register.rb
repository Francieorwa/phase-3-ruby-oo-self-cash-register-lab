class CashRegister
    attr_reader :discount
    attr_accessor :total, :last_transaction

    def initialize(discount=0,total=0.0)
        @discount = discount
        @total = total 
        @items = []
        @last_transaction=0
    end
    def add_item(title, price, quantity=1)
        self.total += price*quantity 
        self.last_transaction=price*quantity
        quantity.times do 
        @items << title
        end
    end
  
    # def apply_discount
    #     return "There is no discount to apply." if @discount == 0
    #     self.total = self.total  * 0.8
    #     "After the discount, the total comes to $#{@total.to_i}."
    #   end
    def apply_discount
    if @discount >0
       @total = self.total  * 0.8
       "After the discount, the total comes to $#{@total.to_i}."
       else  "There is no discount to apply."
    end
    end
    def items
      @items
    end  
      
    def void_last_transaction
        self.total -=self.last_transaction
      end
end

