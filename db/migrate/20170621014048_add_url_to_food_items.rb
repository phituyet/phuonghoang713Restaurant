class AddUrlToFoodItems < ActiveRecord::Migration[5.1]
  def change
    add_column :food_items, :url, :string
  end
end
