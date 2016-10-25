class PokemonController < ApplicationController
	def capture
		pokemon = Pokemon.where(id: params[:id]).first
		pokemon.trainer = current_trainer
		pokemon.save!
		redirect_to '/'
	end

	def damage
		pokemon = Pokemon.where(id: params[:id]).first
		if pokemon.health <= 0
			pokemon.destroy
		else
			pokemon.health = pokemon.health - 10
			pokemon.save!
		end
		redirect_to trainer_path(id: params[:trainer_id])
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		pokemon = Pokemon.new(name: params[:pokemon][:name], trainer: current_trainer, health: 100, level: 1)
		if pokemon.save
			redirect_to trainer_path(id: current_trainer)
		else
			flash[:error] = pokemon.errors.full_messages.to_sentence
			redirect_to new_path
		end
	end
end