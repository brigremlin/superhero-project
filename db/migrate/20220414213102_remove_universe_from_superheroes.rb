class RemoveUniverseFromSuperheroes < ActiveRecord::Migration[6.1]
  def change
    remove_column :superheroes, :universe
  end
end
