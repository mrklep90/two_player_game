require './player'
require './turn_counter'
require './question'

# Initialize Players
player1 = Player.new('Player One')
player2 = Player.new('Player Two')

# # Initialize New Turn
# turn = TurnCounter.new()

# # New turn
# turn.new_turn

# # Ask a question
# question = Question.new(player1.name)

# # Accept answer
# question.accept_answer

# # Validate answer
# question.validate_answer

# # Penalize player for incorrect answer
# if question.answer_correct == 0
#   player1.lives -= 1
# end

# # Display current score
# turn.current_score(player1.lives, player2.lives)

# # Game over
# if player1.lives == 0
#   turn.final_score(player2, player2.lives)
# elsif player2.lives == 0
#   turn.final_score(player1, player1.lives)
# end

i = 1
loop do
  player = i.odd? ? player1 : player2

  turn = TurnCounter.new()

  turn.new_turn

  question = Question.new(player.name)

  question.accept_answer

  question.validate_answer

  question.answer_correct == 0 ? player.lose_life : nil

  turn.current_score(player1.lives, player2.lives)
  
  if player1.lives == 0
    turn.final_score(player2.name, player2.lives)
    break
  elsif player2.lives == 0
    turn.final_score(player1.name, player1.lives)
    break
  end
  
  i += 1
end








