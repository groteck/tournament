class CreateUGroups < ActiveRecord::Migration
  def change
    create_table :u_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
