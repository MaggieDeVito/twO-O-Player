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
  def correct_answer?(player_input)
    @sum == player_input
  end
end

# question1 = Questions.new
# puts question1.ask_question
# puts question1.correct_answer?
