class CreateCreateRatings < ActiveRecord::Migration
  def change
    create_table :create_ratings do |t|
      t.integer :rating_id

      t.timestamps
    end

    add_index :location_id
  end
end
