class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :tournament_id

      t.timestamps
    end
  end
end
