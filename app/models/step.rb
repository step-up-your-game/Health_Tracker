class Step < ActiveRecord::Base
  validates :number, presence: true

  def self.step
    if Step.where(['created_at > ?', DateTime.now.beginning_of_day]).exists?
      @steps = Step.where(['created_at > ?', DateTime.now.beginning_of_day]).sum(:number)
    else
      @steps = 0
    end
  end

end
