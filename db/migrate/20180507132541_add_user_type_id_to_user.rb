class AddUserTypeIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :userType_id, :integer
  end
end
