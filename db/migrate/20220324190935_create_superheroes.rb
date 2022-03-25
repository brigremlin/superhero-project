class CreateSuperheroes < ActiveRecord::Migration[6.1]
  def change
    create_table :superheroes do |t|
      t.string :name
      t.string :full_name
      t.string :image
      t.string :place_of_birth
      t.string :gender
      t.string :height
      t.string :weight
      t.string :intelligence
      t.string :strength
      t.string :speed
      t.string :power

      t.timestamps
    end
  end
end


# Superhero.create(name: "", full_name: "", image: "", place_of_birth: "", gender: "", height: "", weight: "", intelligence: "", strength: "", speed: "", power: "")