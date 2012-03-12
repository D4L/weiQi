class CreatePeices < ActiveRecord::Migration
  def change
    create_table :peices do |t|
      t.integer :x
      t.integer :y
      t.references :board

      t.timestamps
    end
    add_index :peices, :board_id
  end
end
