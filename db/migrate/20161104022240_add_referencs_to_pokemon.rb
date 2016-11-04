class AddReferencsToPokemon < ActiveRecord::Migration
  def change
    add_column :pokemons, :references, :trainer
  end
end
