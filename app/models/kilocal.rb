class Kilocal < ActiveRecord::Base
  validates :number, presence: true

  def self.kilocal
    @kilocals = Kilocal.sum(:number)
  end

end
