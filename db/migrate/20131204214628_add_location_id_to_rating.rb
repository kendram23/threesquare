class AddLocationIdToRating < ActiveRecord::Migration
  def change
    add_column :ratings, :location_id, :integer
  end
end
