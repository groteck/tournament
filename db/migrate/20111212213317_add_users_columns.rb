class AddUsersColumns < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :points, :default => 0
      t.integer :u_group_id, :default => 1
      t.string :username
    end
  end

  def down
  end
end
