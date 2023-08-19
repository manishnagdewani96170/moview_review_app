class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name, null: :false, default: ''
      t.string :description
      t.integer :year, null: :false, default: 1900
      t.references :director, index: :true
      t.references :actor, index: :true
      t.string :filming_location
      t.string :country
      t.timestamps
    end
  end
end
