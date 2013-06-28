class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :car_id

      t.timestamps
    end
  end
end
