class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :address
      t.string :phone_number
      t.integer :comments_count, default: 0
      t.integer :gender, null: false

      t.timestamps
    end
  end
end
