# players
# VARIABLES
# - name
# - score
#  BEHAVIOUR
# - minus one from score when answers incorrectly

class Players
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end 

  def incorrect_answer
    @lives -= 1
  end

  def dead?
    @lives == 0
  end 
end