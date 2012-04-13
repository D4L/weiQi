class AddTurnToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :turn, :string

  end
end
