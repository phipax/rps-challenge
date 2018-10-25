class HPlay
  attr_reader :p1, :p2, :selection, :decision

  def initialize(player1,player2)
   @p1 = player1
   @p2 = player2
   @selection = Hash.new
   @decision = ""
  end

  def select(player)

    @selection[player.to_s] = ["Rock","Papers","Scissors"].sample
    p "Inside HPlay::select(#{player}) #{@selection} #{@selection.count}"
    decide if @selection.count==2
  end

  def decide
    case
    when (@selection[@p1] == 'Rock' && @selection[@p2] == 'Papers')
      @decision = "#{@p2} Wins!!"
    when (@selection[@p1] == 'Rock' && @selection[@p2] == 'Rock')
      @decision = "It is a tie!"
    when (@selection[@p1] == 'Rock' && @selection[@p2] == 'Scissors')
      @decision = "#{@p1} Wins!!"
    end
  end

  def self.create(player1, player2)
    #p "Create from HPlay called"
    @hp = HPlay.new(player1,player2)
  end

  def self.instance
    @hp
  end
end
