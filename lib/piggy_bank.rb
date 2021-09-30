class PiggyBank

  def initialize(coin_count = 0)
    @coin_count = coin_count
  end

  def add_coins(amount)
    @coin_count += amount
    "Coins in your piggy bank: #{@coin_count}"
  end  

  def shake_piggy_bank
    if @coin_count > 0
      "Cling"
    else
      "Remember to put coins in your piggy bank!" 
    end   
  end
  
  def break_piggy_bank
    "Coins you put in your piggy bank: #{@coin_count}"
  end  
end