class CreateUserTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_types do |t|
      t.string :name
      t.text :description
      t.boolean :authorizeDiscount
      t.float :comissionPercentage

      t.timestamps
    end
  end
end
