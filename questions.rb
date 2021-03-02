#problems
#BEHAVIOURS
# - generate math questions between 1-20

class Questions
  def initialize()
    @num1 = rand(1..20) 
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end
  def ask_question
    "What is #{@num1} plus #{@num2}"
  end
  def answer
    "#{@sum}"
  end
  def correct_answer?
    player_answers = gets.chomp.to_i
    if player_answers == @sum
      "Correct!"
    else
      "Incorrect!"
    end
  end
end

question1 = Questions.new
puts question1.ask_question
puts question1.play_answer
