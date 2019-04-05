desc "Play rock in rock-paper-scissors"
task :play_rock do
  ap "We played rock!"

  moves=["rock", "paper", "scissors"]

  comp_move = moves.sample
  ap "The computer chose " + comp_move

  if comp_move == "rock"
    ap "We tied!"
  elsif comp_move == "paper"
    ap "We lost!"
  else ap "We won!"
  end
  
end

desc "Play paper in rock-paper-scissors"
task :play_paper do
  ap "We played paper!"

  moves=["rock", "paper", "scissors"]

  comp_move = moves.sample
  ap "The computer chose " + comp_move

  if comp_move == "paper"
    ap "We tied!"
  elsif comp_move == "scissors"
    ap "We lost!"
  else ap "We won!"
  end

end

desc "Play scissors in rock-paper-scissors"
task :play_scissors do
  ap "We played scissors!"

  moves=["rock", "paper", "scissors"]

  comp_move = moves.sample
  ap "The computer chose " + comp_move

  if comp_move == "scissors"
    ap "We tied!"
  elsif comp_move == "rock"
    ap "We lost!"
  else ap "We won!"
  end

end
