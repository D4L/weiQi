class PeicesController < ApplicationController
  def update
    @peice = Peice.find(params[:id])
    @board = Board.find(params[:board_id])
    respond_to do |format|
      if @peice.update_attributes(:colour => params[:colour])
        @board.flip_sides
        format.html { redirect_to @board, notice: 'Peice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { redirect_to @board }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end
end
