class Game
  attr_reader :output, :phase, :score

  def phase=(phase)
    @phase = phase
  end

  def player_hits_target
    @output = "Congratulations!"
    @score = 100
  end
  
  def score
    @score  
  end
end

describe Game, "in the final phase" do
  before do
    @game = Game.new
    @game.phase = :final
  end
  context "when the player hits the target" do
    it "congratulates the player" do
  
      @game.player_hits_target

      expect(@game.output).to eq("Congratulations!")
    end
    it "sets the score to 100" do

      @game.player_hits_target

      expect(@game.score).to eq(100)
    end
  end
end
