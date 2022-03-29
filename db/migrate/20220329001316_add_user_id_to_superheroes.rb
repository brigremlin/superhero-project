class AddUserIdToSuperheroes < ActiveRecord::Migration[6.1]
  def change
    add_column :superheroes, :user_id, :int
  end
end
