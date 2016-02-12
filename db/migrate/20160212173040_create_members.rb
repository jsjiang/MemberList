class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

class AddAvatarColumnsToUsers < ActiveRecord::Migration
  def up
    add_attachment :users, :avatar
  end

  def down
    remove_attachment :users, :avatar
  end
end
