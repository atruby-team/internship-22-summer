class ChangeDatatypeGenderUsers < ActiveRecord::Migration[7.0]
  def up
    User.where(gender: 'Nam').update_all(gender: 1)
    User.where(gender: 'Nữ').update_all(gender: 2)
    User.where(gender: 'Giới tính khác').update_all(gender: 3)

    change_table :users do |t|
      t.change :gender, :integer
    end
  end

  def down
    change_table :users do |t|
      t.change :gender, :string
    end

    User.where(gender: '1').update_all(gender: 'Nam')
    User.where(gender: '2').update_all(gender: 'Nữ')
    User.where(gender: '3').update_all(gender: 'Giới tính khác')
  end
end
