class AddCourierIdToCouriers < ActiveRecord::Migration[6.1]
  def change
    add_column :couriers, :courier_id, :integer
  end
end
