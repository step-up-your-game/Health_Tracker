class Kilocal < ActiveRecord::Base
  validates :number, presence: true

  def self.kilocal
    if Kilocal.where(['created_at > ?', DateTime.now.beginning_of_day]).exists?
      @kilocals = Kilocal.where(['created_at > ?', DateTime.now.beginning_of_day]).sum(:number)
    else
      @kilocals = 0
    end
  end

end
