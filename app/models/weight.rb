class Weight < ActiveRecord::Base
  validate :validate_first_entry_of_the_day
  def self.weight
      Weight.order(created_at: :desc).first.weight if Weight.count>0
  end

  private def validate_first_entry_of_the_day
    errors.add(:weight, "Entry already exists for today") if Weight.where(['created_at > ?', DateTime.now.beginning_of_day]).exists?
  end

end
