class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name, null: :false, default: '' 
      t.timestamps
    end
  end
end
