class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.integer :car_id

      t.timestamps
    end
  end
end
