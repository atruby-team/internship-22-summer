class ChangeDatatypeGenderUsers < ActiveRecord::Migration[7.0]
  def up
    User.all.each do |user|
      case user.gender
      when 'Nam'
        user.update(gender: 1)
      when 'Nữ'
        user.update(gender: 2)
      else
        user.update(gender: 3)
      end
    end

    change_table :users do |t|
      t.change :gender, :integer
    end
  end

  def down
    change_table :users do |t|
      t.change :gender, :string
    end

    User.all.each do |user|
      case user.gender
      when "1"
        user.update(gender: 'Nam')
      when "2"
        user.update(gender: 'Nữ')
      else
        user.update(gender: 'Giới tính khác')
      end
    end
  end
end
