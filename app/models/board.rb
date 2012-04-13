class Board < ActiveRecord::Base
  has_many :peices, :dependent => :destroy

  after_create :create_peices

  def flip_sides
    if turn == "black"
      self.turn = "white"
    else
      self.turn = "black"
    end
    self.save
  end

  private

  def create_peices
    (1..19).each do |x|
      (1..19).each do |y|
        self.peices.create(:x => x, :y => y)
      end
    end
  end
end
