class PokemonsController < ApplicationController
  def capture
    p = Pokemon.where(id: params[:id])

	p.update_all(:trainer_id => current_trainer.id)
	redirect_to root_path
  end

    def damage
    p = Pokemon.where(id: params[:id]).first
    if not p.health
    	p.delete
    end
	else
		p.update(:health => p.health - 10)
		if p.health <= 0
			p.delete
		end
	redirect_to trainers_path
  end
  
  def new
  	@pokemon = Pokemon.new
  end

  def create
  	@pokemon = Pokemon.create(:name => params[:pokemon][:name], :health => 100, :level => 1 )
  	if @pokemon.save
  	  redirect_to trainers_path
  		
  	else
  		flash[:error] = @pokemon.errors.full_messages.to_sentence
  		redirect_to new_pokemon_path
  	end  	

  end

end
