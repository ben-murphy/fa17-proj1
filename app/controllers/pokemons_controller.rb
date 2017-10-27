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

	def new
		render "new"
	end

	def create
		@poke = Pokemon.new
		@poke.level = 1
		@poke.health = 100
		@poke.name = params[:name]
		@poke.trainer_id = current_trainer.id
		if @poke.valid?
			@poke.save
			redirect_to "/trainers/"+current_trainer.id.to_s
		else 
			if @poke.name.nil? or @poke.name == ""
				flash.now[:error] = "Name the Pokemon something, god damn it!"
			else
				flash.now[:error] = "Already a pokemon named that!"
			end		
		end		
	end

end