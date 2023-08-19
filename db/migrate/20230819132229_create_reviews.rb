class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :movie, index: true
      t.references :user, index: :true
      t.decimal :rating, null: :false
      t.string :comment
      t.timestamps
    end
  end
end
