class AddSectionIdToFoodItems < ActiveRecord::Migration[5.1]
  def change
    add_column :food_items, :section_id, :integer
  end
end
