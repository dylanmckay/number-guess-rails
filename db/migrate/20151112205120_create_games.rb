class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :target_number, null: false

      t.timestamps null: false
    end
  end
end
