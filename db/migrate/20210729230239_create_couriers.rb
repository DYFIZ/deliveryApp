class CreateCouriers < ActiveRecord::Migration[6.1]
  def change
    create_table :couriers do |t| 
      t.string :name
      t.string :email
      t.index :courier_id
      t.timestamps
    end
  end
end
