class CreateSuperheroUniverses < ActiveRecord::Migration[6.1]
  def change
    create_table :superhero_universes do |t|
      t.integer :superhero_id
      t.integer :universe_id
      t.timestamps
    end
  end
end
