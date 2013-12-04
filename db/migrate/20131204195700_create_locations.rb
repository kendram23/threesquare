class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :picture_url
      t.string :review
      t.string :address
      t.string :website

      t.timestamps
    end
  end
end
