defmodule TextClient.Interact do
	
	alias TextClient.{State, Player}

	defstruct(
		game_service: nil,
		tally:				nil,
		guessed:			""
	)

	def start() do
		Hangman.new_game()
			|> setup_state()
			|> play()
	end

	defp setup_state(game) do
		%State{
			game_service: game,
			tally: 				Hangman.tally(game),
		}
	end

	def play(state) do
		Player.play(state)
	end

end