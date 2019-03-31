class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.references :shopping_list, foreign_key: true

      t.timestamps
    end
  end
end
