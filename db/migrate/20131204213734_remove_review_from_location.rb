class RemoveReviewFromLocation < ActiveRecord::Migration
  def change
    remove_column :locations, :review, :string
  end
end
