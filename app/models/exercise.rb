class Exercise < ActiveRecord::Base
  extend Everyday

  belongs_to :exercise_type
  validates :hours, :number,  presence: true
  delegate :name, :to => :exercise_type, :prefix => "exercise_type"
  def self.burned
    if Exercise.where(['created_at > ?', DateTime.now.beginning_of_day]).exists?
      Exercise.where(['created_at > ?', DateTime.now.beginning_of_day]).sum(:number)
    else
      0
    end
  end

  def self.exercise
    if Exercise.count>0
      Exercise.all.map(&:exercise_type_name)
    else
      "None"
    end
  end

end
