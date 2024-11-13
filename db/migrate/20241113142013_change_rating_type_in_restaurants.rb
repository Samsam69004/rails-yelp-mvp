class ChangeRatingTypeInRestaurants < ActiveRecord::Migration[7.1]
  def change
    change_column :restaurants, :rating, :integer
  end
end
