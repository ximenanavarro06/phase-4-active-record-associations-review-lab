class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      # add_column :rides, :taxi_id, :integer
      # add_column :rides, :passenger_id, :integer
      t.belongs_to :passenger#, foreign_key :passenger_id
      t.belongs_to :taxi#, foreign_key :taxi_id

      t.timestamps
    end
  end
end
