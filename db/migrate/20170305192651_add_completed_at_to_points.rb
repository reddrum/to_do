class AddCompletedAtToPoints < ActiveRecord::Migration[5.0]
  def change
    add_column :points, :completed_at, :datetime
  end
end
