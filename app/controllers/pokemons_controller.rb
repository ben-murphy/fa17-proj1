class PokemonsController < ApplicationController

	def capture
		id = params[:id]
		pokeymans = Pokemon.find(id)
		pokeymans.trainer_id = current_trainer.id
		pokeymans.save
		redirect_to root_path
	end

	def damage
		pokey = params[:id]
		pokey = Pokemon.find(pokey)
		health = pokey.health
		pokey.health = health - 10
		trainer = pokey.trainer_id
		if pokey.health <= 0
			pokey.delete
		else
			pokey.save
		end
		redirect_to "/trainers/"+trainer.to_s
	end
end