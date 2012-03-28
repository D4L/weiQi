class Board < ActiveRecord::Base
  has_many :peices, :dependent => :destroy

  after_create :create_peices

  private

  def create_peices
    (1..19).each do |x|
      (1..19).each do |y|
        self.peices.create
      end
    end
  end
end
