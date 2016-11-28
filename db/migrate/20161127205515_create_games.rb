class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :paul
      t.integer :oli
      t.integer :al
      t.integer :tom
      t.integer :john
      t.date :date

      t.timestamps
    end
  end
end
