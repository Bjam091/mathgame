require "./players.rb"
require "./questions.rb"

puts "-----WELCOME!!-----"

print "Insert Player 1's name here: "
player1_name = gets.chomp
print "Insert Player 2's name here: "
player2_name = gets.chomp

gameplayer1 = Players.new(player1_name)
gameplayer2 = Players.new(player2_name)

current_player = 1


puts "-----GAME TIME-----"
puts "Let's Go!"

while (gameplayer1.alive? && gameplayer2.alive?) do

  gameplayer = (current_player == 1) ? gameplayer1 : gameplayer2

  question = Questions.new()

  puts "-----------NEW TURN-----------"

  puts "#{gameplayer.name}: #{question.question}"

  answer = gets.chomp.to_i

  if answer == question.answer
    puts "YES! You are correct."
    puts "#{gameplayer1.name} #{gameplayer1.lives}/3 lives and #{gameplayer2.name} #{gameplayer2.lives}/3 lives"
    else
      gameplayer.lives -= 1
      puts "Seriously? No!"
      puts "#{gameplayer1.name} #{gameplayer1.lives}/3 lives and #{gameplayer2.name} #{gameplayer2.lives}/3 lives"
    end
    current_player = (current_player + 1) % 2
  end

if gameplayer1.lives == 0
		puts "---#{gameplayer2.name} wins with a score of #{gameplayer2.lives}/3"
elsif player2.lives == 0
		puts "---#{gameplayer1.name} wins with a score of #{gameplayer1.lives}/3"
end




puts "-----GAME OVER-----"
puts "Good bye!"