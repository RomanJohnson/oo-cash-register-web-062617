require "pry"
class CashRegister
attr_writer :total
attr_reader :total
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @cart = []
      @last_transaction = {}
    end

    def discount
      @discount
    end

    def add_item(title, price, quantity = 1)

      @total += (price * quantity)
       #if title.class != nil
       quantity.times do
         @cart << title
       end

       @last_transaction[:quantity] = quantity
       #@last_transaction[title] = title
       @last_transaction[:price] = price






    end

    def apply_discount
      @total = @total * (1- (@discount.to_f/100.00))

        if discount != 0
          "After the discount, the total comes to $#{@total.to_i}."
        else
          "There is no discount to apply."
        end
    end

    def items
      @cart
    end

    def void_last_transaction
      temp = @last_transaction[:quantity] * @last_transaction[:price]
      @total -= temp
    end
end
