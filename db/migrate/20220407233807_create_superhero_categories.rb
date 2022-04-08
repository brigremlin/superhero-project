class CreateSuperheroCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :superhero_categories do |t|
      t.integer :superhero_id
      t.integer :category_id
      t.timestamps
    end
  end
end
