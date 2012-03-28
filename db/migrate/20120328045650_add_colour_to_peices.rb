class AddColourToPeices < ActiveRecord::Migration
  def change
    add_column :peices, :colour, :string
  end
end
