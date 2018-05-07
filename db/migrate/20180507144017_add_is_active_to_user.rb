class AddIsActiveToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :isActive, :boolean
  end
end
