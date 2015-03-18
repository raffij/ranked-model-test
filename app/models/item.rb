class Item < ActiveRecord::Base

  has_many :list_items, inverse_of: :item
  has_many :lists, through: :list_items, inverse_of: :list

end
