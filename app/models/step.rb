class Step < ActiveRecord::Base
  validates :number, presence: true

  def self.step
    @steps = Step.sum(:number)
  end

end
