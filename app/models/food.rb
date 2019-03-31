class Food < ApplicationRecord

  # attr_accessible :food_name, :shopping_list_id

  belongs_to :shopping_list



end
