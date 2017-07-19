require File.expand_path(File.dirname(__FILE__) + '/drink')
#expand_pathで、drink/file名より絶対パスにする

class VendingMachine
    AVAILABLE_MONEY = [10, 50, 100, 500, 1000].freeze
    # AVAILABLE_MONEYは定数?
    # freezeメソッドで凍結
    
    attr_reader :total, :sale_amount

    def initialize #initializeで初期化
        @total = 0
        @sale_amount = 0
        @drink_table = {}
        5.times { store Drink.cola }
    end
    

    #入金
    def insert(money)
        AVAILABLE_MONEY.include?(money) ? nil.tap { @total += money } : money
    end

    
    #払い戻し
    def refund
        total.tap { @total = 0 } #tapでレシーバ自身を返す
    end

end



machine = VendingMachine.new

machine.insert 10
machine.insert 50

p machine.total