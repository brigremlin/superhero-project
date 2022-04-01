class AddUniverseToSuperheroes < ActiveRecord::Migration[6.1]
  def change
    add_column :superheroes, :universe, :string
  end
end
