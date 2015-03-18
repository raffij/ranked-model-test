class ListItem < ActiveRecord::Base

  scope :ordered, -> { order(play_order: :asc) }

  belongs_to :list, inverse_of: :list_items
  belongs_to :item, inverse_of: :list_items

  include RankedModel
  ranks :play_order, with_same: :list_id

end
