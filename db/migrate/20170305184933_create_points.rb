class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.string :content
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
