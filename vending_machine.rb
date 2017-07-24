money = [10, 50, 100, 500, 1000]
total = 0
sales = 0

cola = {:name => "コーラ", :price => 120, :value => 5}
redbull = {:name => "レッドブル", :price => 200, :value => 5}
water = {:name => "水", :price => 100, :value => 5}

puts "777:情報 888:払い戻し 999:コーラ購入 666:レッドブル購入 555:水購入"
loop do
    pay = gets.to_i
    if money.include?(pay)
        total += pay
        puts "総計#{total}円"
        if total >= cola[:price] && cola[:value] > 0
            puts "コーラ購入可"
        else
            puts "購入付加"
        end
        if total >= redbull[:price] && redbull[:value] > 0
            puts "レッドブル購入可"
        else
            puts "購入付加"
        end
        if total >= water[:price] && water[:value] > 0
            puts "水購入可"
        else
            puts "購入付加"
        end
    elsif pay == 999
        if total >= cola[:price] && cola[:value] > 0
            cola[:value] -= 1
            sales += cola[:price]
            total -= cola[:price]
            puts "残高#{total}円"
        else
            puts "購入できません"
        end
    elsif pay == 666
        if total >= redbull[:price] && redbull[:value] > 0
            redbull[:value] -= 1
            sales += redbull[:price]
            total -= redbull[:price]
            puts "残高#{total}円"
        else
            puts "購入できません"
        end
    elsif pay == 555
        if total >= water[:price] && water[:value] > 0
            water[:value] -= 1
            sales += water[:price]
            total -= water[:price]
            puts "残高#{total}円"
        else
            puts "購入できません"
        end
        
    elsif pay == 888
        break
    elsif pay == 777
        puts "#{cola[:name]}/#{cola[:price]}円/#{cola[:value]}本"
        puts "#{redbull[:name]}/#{redbull[:price]}円/#{redbull[:value]}本"
        puts "#{water[:name]}/#{water[:price]}円/#{water[:value]}本"
        
    else
        puts "釣銭#{pay}円"
    end
end
puts "釣銭#{total}円"
puts "売上#{sales}円"
