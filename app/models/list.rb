class List < ActiveRecord::Base

  has_many :list_items,
    -> { order(ListItem.arel_table[:play_order].asc) },
          inverse_of: :list
  has_many :items, through: :list_items

end
