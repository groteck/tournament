class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :acount
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
