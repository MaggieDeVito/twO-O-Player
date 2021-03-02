# game
#BEHAVIOURS
# - go between turns

require "./players"
require "./questions"

puts "Welcome to TwoO-O-Player Math Game, lets begin!"

class Game
    def initialize
      @player1 = Players.new('Player 1')
      @player2 = Players.new('Player 2')
      @current_player = @player1
    end 

    def start_game
      while !@player1.dead? && !@player2.dead? do
        first_question = Questions.new
        puts first_question.ask_question(@current_player.name)
        players_answers = gets.chomp
        if first_question.correct_answer?(players_answers.to_i)
          puts "YES! You are correct."
          puts ">"
        else
          puts "Seriously? No"
          puts ">"
          @current_player.incorrect_answer
        end
        puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
        puts ">"
        if @current_player == @player1
          @current_player = @player2
        else 
          @current_player = @player1
        end
      end
    end
  end


  newGame = Game.new
  newGame.start_game