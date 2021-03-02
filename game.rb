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
        print "> "
        players_answers = gets.chomp
        if first_question.correct_answer?(players_answers.to_i)
          puts "#{@current_player.name}: YES! You are correct."
        else
          puts "#{@current_player.name}: Seriously? No"
          @current_player.incorrect_answer
        end
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        if @current_player == @player1
          @current_player = @player2
        else 
          @current_player = @player1
        end
        puts "~~~~~NEXT PLAYERS TURN~~~~~"
      end
      if @player1.dead? 
        puts "PLAYER 2 WINS WITH A SCORE OF #{@player2.lives}/3"
      else 
        puts "PLAYER 1 WINS WITH A SCORE OF #{@player1.lives}/3"
      end
      puts "~~~~~GAME OVER~~~~~"
    end
  end