class ShoppingList < ApplicationRecord

  # attr_accessible :list_name, :foods_attributes

  has_many :foods, dependent: :destroy

  accepts_nested_attributes_for :foods, :reject_if => :all_blank, allow_destroy: true

end
