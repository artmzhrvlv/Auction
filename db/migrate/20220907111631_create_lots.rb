class CreateLots < ActiveRecord::Migration[7.0]
  def change
    create_table :lots do |t|
      t.string :name
      t.text :body
      t.time :time_to_spend
      t.string :photos
      t.integer :start_price
      t.integer :max_price
      t.string :type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
