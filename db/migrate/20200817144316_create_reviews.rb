class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.references :booking, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
