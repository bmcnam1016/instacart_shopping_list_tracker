class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.integer :current_amount
      t.string :image
      t.integer :reorder_amount
      t.integer :food_category_id
      t.integer :user_id
      t.integer :amount_per_order
      t.string :name

      t.timestamps

    end
  end
end
